# Instructions
Note that this exercise needs the setup from the previous exercise,
`sdk-driver-header`.

0. Generate a reggen header file for the timer interface (`timer.hjson`), named `my_timer.h`
1. Include `my_timer.h` and demonstrate that `reggen.c` compiles and runs.
2. Now modify `pulp-sdk/hal` to expose the `my_timer.h` header instead of
   locally including it. See the `sdk-hal-header` exercise.
3. Check the pulpissimo documentation. Besides `Timer Low` there is also a
   `Timer High` peripheral, nested inside the same address space. Replace the `{
   reserved: "1" }` statements with register description of `Timer High`.
4. Use `regtool.py` to generate documentation using `timer.hjson` as source.

`example/gpio_example.hjson` is an example how a more complicated `hjson` description
could look like.

# Notes
Generating C header files

```
python3.6 ./regtool.py --cdefines example/gpio_example.hjson  --outdir sv/
```

Generating SystemVerilog
```
python3.6 ./regtool.py -r example/gpio_example.hjson  --outdir sv/
```
