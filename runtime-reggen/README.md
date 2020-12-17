# Instructions
Note that this exercise needs the information/setup from the previous exercise.

0. Generate a reggen header file for the timer interface (`timer.hjson`), named `my_timer.h`
1. Include `my_timer.h` and demonstrate that `reggen.c` compiles and runs.
2. Now modify `pulp-runtime` to expose the `my_timer.h` header instead of
   locally including it. It makes sense to put the header to the hal header
   files or in the `pulp-runtime/include` directory.
3. Use `regtool.py` to generate documentation using `timer.hjson` as source.
4. Check the pulpissimo documentation. Besides `Timer Low` there is also a
   `Timer High` peripheral, nested inside the same address space. Replace the `{
   reserved: "1" }` statements with register description of `Timer High`.


# Notes
We are assuming you run on a centos 7 machine (with `python3.6` from EPEL).

There is a *symlink to the regtool.py script in this directory*.

## *Python dependencies to run* `./regtool.py`
```
python3.6 -m pip install --user hjson
python3.6 -m pip install --user mistletoe
python3.6 -m pip install --user mako
```

## Documentation of `./regtool.py`

```
https://docs.opentitan.org/util/reggen/README/
https://docs.opentitan.org/doc/rm/register_tool/

```

## Example hjson description

`example/gpio_example.hjson` is an example how a more complicated `hjson` description
could look like.


## Generating C header files with `./regtool.py`

```
python3.6 ./regtool.py --cdefines example/gpio_example.hjson  --outdir sv/
```

## Generating SystemVerilog files with `./regtool.py`
```
python3.6 ./regtool.py -r example/gpio_example.hjson  --outdir sv/
```

