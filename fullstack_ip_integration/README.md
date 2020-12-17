# Instructions

## IP Integration

## Driver
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
