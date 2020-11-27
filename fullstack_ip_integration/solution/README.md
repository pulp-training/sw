# full_stack_ip_integration solution

The solution consist of the following parts
1. The hardware changes
2. Patching the PULP-RUNTIME with the [new driver](#adding-the-new-driver) (`runtime-driver.patch`)
3. The test [application](#application), which exercises the driver (`widealu-ip`)


## Adding the new driver
First checkout a new `pulp-runtime` with version `v0.0.5` or use your existing runtime.
```bash
git clone pulp-runtime -b v0.0.5
# or
cd your_pulp_runtime
git checkout v0.0.05
```

Then apply the solution patch `runtime-driver.patch`. It contains the driver and
changes necessary you need to do to the pulp-runtime to get a working driver for
the accelerator IP presented in this exercise.

It is also worthwile to just browse and look at the patch file to see what files
it touches and what changes are being made.

You apply the solution patch as follows:
```bash
cp runtime_driver.patch your_pulp_runtime
cd your_pulp_runtime
git apply runtime_driver.patch
```

## Application
The `widealu-ip` folder contains a small test application that the newly added driver.
If you run after having sourced and configured the runtime and the pulpissimo RTL like this:
```bash
source setup/vsim.sh  # in your pulpissimo directory
source configs/pulpissimo.sh  # in your runtime directory
```
then calling `make all run` in `widealu-ip` should print something like
```
# ...
# [STDOUT-CL31_PE0] Result [0]: 15
# [TB] 8573501ns - Received status core: 0x00000000
# ...
```
to your shell.
