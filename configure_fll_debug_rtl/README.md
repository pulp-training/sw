# Instructions
In this exercise your task is to develop a small application that alters the
frequency of the internal FLLs and uncover a bug in the toplevel testbench. For
this exercise we prepared 2 modified RTL files:
- `tb_top.sv` is a modified version of the normal toplevel testbench of
  PULPissimo that verifies that you successfully altered both internal SoC
  frequencies.
- `soc_clk_rst_gen.sv` is a modified version of the FLL wrapper that is
  instantiated within pulpissimo/ips/pulp_soc/rtl/pulp_soc/pulp_soc.sv that
  contains some modification to make the exercise work.
  
One of the main goals of this exercise is to strenghen your code exploration
skills in the PULPissimo codebase. Thus, there are intenionally not many hints on
how to actually acomplish the tasks. Try to find your way through the codebase
using a good editor or a recursive greping tool (e.g. grep, ripgrep, ag). If you
feel stuck, ask for help.
  
  0. Create a new clone of pulpissimo (new_soc_interconnect branch) and
     overwrite both `tb_top.sv` and `soc_clk_rst_gen.sv` with the files in this exercise repository.
     
  1. Write a pulp-runtime application that reconfigures the SoC (sometimes also
     denoted FC for fabric controller) clock frequency to 1MHz and the
     peripheral clock frequency to 500kHz. Use the FLL driver functions in the
     pulp-runtime. 
     
     > Hint: The frequency argument of the relevant function is in units Hz.
  2. Simulate the application on the RTL platform. Make sure you rebuild the rtl
     libraries with the two modified source files before starting the
     simulation.
  3. After your application terminates, the modifed testbench will check the
     frequency of both clock domains. If your application is written without any
     errors you should pass **only the first test**. You can verify in your RTL
     simulation, that the SoC clock indeed is modified by your application.
     However, we added some pretty nasty bug into the testbench that prevents
     the configuration of the peripheral clock to work as expected. This is were
     the second part of this exercise starts:
     
     Investigate the issue by backtracing the peripheral clock in the RTL
     simulation and in your sourcecode. Again, use a good editor or recursive
     text search tool to make your live easier. 
     
     > Hint: There is no bug in the RTL of PULPissimo (this include the modified
     > soc_clk_rst_gen.sv). The testbench does something with the SoC that
     > causes the errorneous behavior. Don't try to modify any file but `tb_pulp.sv`.
     
     This is a pretty hard one to solve! However, this kind of bug was not
     arbitrarilly introduced to come up with a nasty exercise but actually
     resembles an issue we had during one of our tapeouts. If you managed to
     figure out what the issue is but did not yet figure out where exactly the
     errorneus behavior is triggered in the tb source file, try to first verify
     your assumption using *forced signals* in the RTL simulation. Than try to
     backtrack the moment where the offending interaction with the SoC happens
     using the log outputs of the boot procedure.
     
     
  
     
     
     
     
