# Instructions
In this exercise you will integrate a new hardware "accelerator" into pulpissimo
using reggen. For this purpose we prepared a dummy hw accelerator that performs
arithmetic operations on very long data words (256-bits) simultaneously. The
module has a non standard interface and must first be wrapped and connected to a
register file so we can control it through normal loads and stores form the
core. For that purpose we already prepared register file description file in
hjson format usable by reggen. This will allow us to simultaneously generate the
register file for our IP wrapper as well a generating documentation and C header
files for the hardware abstraction layer (HAL). After wrapping the IP with a
pulp compatible interface (we will use an AXI plug and some protocol converter
from some PULP IP library) we attach it to AXI crossbar in pulp_soc and add the
appropriate address rules for our peripheral.

Finally, after integating the IP into PULPissimo/pulp_soc we will proceed with
writing a small driver to interact with the IP using the RISC-V core in
PULPissimo.

This exercise is quite complex to solve but it will guide you through all the
necessary steps to integrate arbitrary IPs into pulp_soc. Although this
particular IP will only contain an AXI slave port for communication, using the
knowledge from the previous exercise (memory layout modification) it should not
be hard to adapt the flow for IPs that also require master ports to the shared
memory.

## IP Integration
1. Familiarize yourself with the module we are going to integrate. Go through
   the toplevel signals and try to get a rough idea what the wide alu module
   does. As mentioned before, its taks is to accept two 256-bit operands and
   apply a user configurable operation (multiply, add, or etc.) on the operand
   and provide a 512-bit result. In addition to that, the wide-alu also allows
   to program a deacceleartion factor which is just a fancy name for a user
   configurable delay, how many clock cycles later the result should be availble
   (I know... a pretty useless "feature" :-).
2. Go through the register file descripion `wide_alu.hjson`. Consult the
   [documention](https://docs.opentitan.org/doc/rm/register_tool/ ) on the
   opentitan website on the specifics of the reggen hjson format. It is not
   important to uderstand every detail but debugging will be easier if you have
   a rough idea what registers are used to map to the different signals of the
   `wide_alu` module.
   > Of course, if you were wrapping your own IP you would have to write this hjson file yourself
3. Create a new github repository with the files of this directory and add a
   `src_files.yml` and `ips_list.yml` description file.
   > We do not have any dependencies to other IPs yet but this will change as soon as we add the wrapper to our IP.
   
   Clone this new repository into the `ips` direcotry of a clean copy of
   pulpissimo (call `./update_ips` first).
4. We are now going to write a wrapper for our wide_alu ip: In the directory of
   your new wide_alu repository, create a new SV module calle `wide_alu_top`.
   The module should have the following portlist:
   - clk_i, rst_ni, test_mode_i
   - A single AXI slave port (use the `AXI_BUS.Slave` SystemVerilog Interface).
     This interface is part of the AXI IP so you can allready add it as a
     dependency to your `ips_list.yml` (make sure to use the same version as
     pulp_soc in order to avoid version conflicts).
     
   and the following parameters:
   ```
     #(
      parameter int unsigned AXI_ADDR_WIDTH = 32,
      localparam int unsigned AXI_DATA_WIDTH = 32,
      parameter int unsigned AXI_ID_WIDTH = -1,
      parameter int unsigned AXI_USER_WIDTH = -1
      )
   ```
5. Generate the register file using the reggen tool. This exercise directory
   contains a link to the python tool that was patched by ETH for usage of the
   "Generic Register Interface Protocol" a much simpler alternative to the
   TileLink Protocol the lowRISC normally uses for their IPs.
   
   Have a look at the generated SystemVerilog package and the portlist of the
   generated register file.
6. Since we want to wrap our IP with an AXI interface we need a protocol
   converter from AXI to the "generic register interface". Luckily such a
   protocol converter is already availble in the register_interface repository
   on github. Have a look at the corresponding
   [module](https://github.com/pulp-platform/register_interface/blob/master/src/axi_to_reg.sv
   ).
   
   Instead of SystemVerilog Interfaces the module uses strcuts for its input and
   output signals. With all the issues that most EDA tools have, the usage of
   strcuts in favor of Interfaces is actually encouraged but for this exercise
   we stick with interfaces for simplicity. If you scroll down to the very
   bottom of the file you will notice that there is wrapper that acceps
   interfaces as ports and converts them to structs internally. 
   
   Instantiate this protocol converter `axi_to_reg_intf` in your IP. On the
   input side `in` you will attach the AXI port, for the output port `reg_o` you
   will have to declare a new wiring signal (actually SystemVerilog interface)
   of type `REG_BUS`. *Call this interface `axi_to_reg_file`*
   
   *Since we just used an IP from the register_inteface repository, don't forget to also add it as a dependency. Also add the following vlog_opts and incdirs to your `src_files.yml`:*
   
   ``` 
     vlog_opts:
    - -L register_interface_lib
    
    incdirs:
    - ../register_interface/include
    - ../register_interface/vendor/lowrisc_opentitan/include
   ```
7. Unfortunately, the autogenerated register_file does not contain a neat
   wrapper the converts form SystemVerilog Interface to structs. We thus have to
   do this step ourself; Use the following snippet to do the conversion:
   
   ```
   //Convert the REG_BUS interface to the struct signals used by the autogenerated interface
    typedef logic [AXI_DATA_WIDTH-1:0] data_t;
    typedef logic [AXI_ADDR_WIDTH-1:0] addr_t;
    typedef logic [AXI_DATA_WIDTH/8-1:0] strb_t;
    `REG_BUS_TYPEDEF_REQ(reg_req_t, addr_t, data_t, strb_t)
    `REG_BUS_TYPEDEF_RSP(reg_rsp_t, data_t)
    reg_req_t to_reg_file_req;
    reg_rsp_t from_reg_file_rsp;
    `REG_BUS_ASSIGN_TO_REQ(to_reg_file_req, axi_to_reg_file)
    `REG_BUS_ASSIGN_FROM_RSP(axi_to_reg_file, from_reg_file_rsp)
   ```
   
   This is some macro magic that declares the structs for the "generic register
   interface protocol" with the correct bitwidth, declares signals of that
   struct type and assigns the signals of the interface to the struct signals
   and vice-versa.
   *You will have to add the following includes to the top of your wrapper file for this to work:*
   ```
   `include "register_interface/typedef.svh"
   `include "register_interface/assign.svh"
   ```
   *Don't forget to register the corresponding include directory in your `src_files.yml`*.
   
8. Instantiate the generated register file and attach the structs from the
   protocol converter we just created with the snippet above. Tie the `devmode_i` signal of the register_file to `1'b1`.
   
   > Hint: for those not so familiar with macros: The signals are called
   > `to_reg_file_req` (connects to `reg_req_i`) and `from_reg_file_rsp`
   > (connects to `reg_rsp_o`).
9. Declare wiring signals that will connect the register file with the actual wide_alu ip with the following snippet:
   ```
   wide_alu_reg2hw_t reg_file_to_ip;
   wide_alu_hw2reg_t ip_to_reg_file;
   ```
   
   These are once again structs. But this time, they are autogenerated by
   reggen. Regardless, you have to import the struct from the autogenerated
   SystemVerilog Package at the beginning of your module (*Please not at the
   beginning of the file. Remember what I said about imports into the
   compilation unit scope!*)
10. Instantiate the wide_alu IP. The two wiring signal structs we just created
    contain subfields for each register in our hjson and with each of those
    register fields, they contain fiels for the individual bitfields of our
    registers. Our last task for the wrapper is to connect those bitfields from
    the register file to the corresponding ports of our `wide_alu` ip. We
    provide you with the first part of the instantiation:
    
    ```
    wide_alu i_wide_alu(
      .clk_i,
      .rst_ni,
      .trigger_i(reg_file_to_ip.ctrl1.trigger.q & reg_file_to_ip.ctrl1.trigger.qe),
      .clear_err_i(reg_file_to_ip.ctrl1.clear_err.q & reg_file_to_ip.ctrl1.clear_err.qe),
      .op_a_i(reg_file_to_ip.op_a),
      .op_b_i(reg_file_to_ip.op_b),
      .result_o(ip_to_reg_file.result),
      .deaccel_factor_we_i(reg_file_to_ip.ctrl2.delay.qe),
      .deaccel_factor_i(reg_file_to_ip.ctrl2.delay.q),
      .deaccel_factor_o(ip_to_reg_file.ctrl2.delay.d),
      .op_sel_we_i(reg_file_to_ip.ctrl2.opsel.qe),
      .op_sel_i(wide_alu_pkg::optype_e'(reg_file_to_ip.ctrl2.opsel.q)),
      ...
    ```
    
    The last two port connections are missing. Try to figure out yourself how you can connect those to the register file. 
    
    > You might notice that for some signals we use only the `q` and `d` signal,
    > while we additionally use the `qe` signal for others. Have a look at the
    > OpenTitan documentaion on the register tool about the difference between
    > `hwext: True` registers and regular registers to figure out why.

11. Commit your changes and add your wide_alu repo as a dependency of `pulp_soc`
 12. Instantiate your wide alu wrapper `wide_alu_top` in the toplevel of `pulp_soc` (`pulp_soc.sv`).
 13. Create a new AXI_BUS SystemVerilog interface instance that will connect your IP wrapper withe the AXI crossbar in soc_interconnect.
 14. In the same manner like you already did for the memory layout exercise modify `soc_interconnect_wrap.sv` as follows:
     - add a new port to `soc_interconnect_wrap.sv` for the AXI connection to the wide alu IP
     - add a new memory region for the wide alu to `rtl/includes/soc_mem_map.svh`:
     ```
     `define SOC_MEM_MAP_WIDE_ALU_START_ADDR   32'h1A40_0000
     `define SOC_MEM_MAP_WIDE_ALU_END_ADDR     32'h1A40_1000
     ```
     - Modify the parameters of `soc_interconnect.sv` within `soc_interconnect_wrap.sv`  and the size of the corresponding Interface Array to contain a third additional AXI slave port. 
     - Add an additional address rule to the `AXI_CROSS_BAR_RULES`
     - Make sure not to forget to assign the AXI port you created for the wide_alu to the `axi_slaves` interfaces array (using the `AXI_ASSIGN` Macro in the same manner you already see on lines 145,146)
 15. Commit your changes to pulp_soc to a new fork (or branch if you already have a fork) of `pulp_soc` and modify the version in `ips_list.yml` of pulpissimo. 
 16. That's all. The ip is now integrated. Update all ips, regenerate the TCL
     scripts and try to build pulpissimo with the integrated IP. Check the log
     to make sure it actually fetches the ips_list.yml of your `wide_alu`
     repository. Get rid of all remaining errors during compilation and makes
     sure pulpissimo builds without any errors (some warnings are ok).
## Driver
Now that we are done integrating the IP into the HW, lets write a small driver
to actually use it without hardcoding register addresses ourselves.

You are given an unfinished driver. You need to integrate it into pulp-runtime
and complete the implementation. If you do everything correctly, running the
given example program (`main.c`) should return the 15 (the multiplication of 3
and 5 being done in the accelerator)

You are given the following files
- `wide_alu_driver.c`: contains partial implementation of the wide_alu driver
- `wide_alu_driver.h`: contains the header file for the partial implementaiton
  of the wide_alu driver


Follow these steps

1. Integrate the given put the driver into pulp-runtime by
   - Moving the header file in `pulp-runtime/include`
   - Moving the implementation file into `pulp-runtime/driver`
   - Patching up `pulpissimo.mk` and `include/pulp.h`

2. Use `wide_alu.hjson` with `regtool.py`to generate the c header
file and integrate it into pulp-runtime

2. Finish the driver implementation and get the `main.c` program to print the
   correct result. In order to do that you are required to implement the
   following functions.
   - `void set_op(uint8_t operation)`
   - `void trigger_op(void)`
   - `int wide_multiply(uint32_t a[32], uint32_t b[32], uint32_t result[64])`
   Before you start, study `main.c`, the already given driver files and your
   auto-generated header file.

   When you run `main.c` it should print `15` to stdout.
