# Instructions
0. Modify the bootrom in `pulp-sdk/runtime/boot_code_pulpissimo` in any way, so
that it results in a different binary. You can for example try to output
something to uart.

1. Compile and install the new bootcode in the pulp-sdk
2. Import the new bootrom into pulpissimo (`make import_bootcode`)
3. Use run.c to test your bootrom
