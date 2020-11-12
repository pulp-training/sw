# Instructions
0. Generate new sourcable configration. Remember this defines the compile time
   configuration of the SDK.
   0. copy `pulp-sdk/configs/pulpissimo.sh` to `pulp-sdk/configs/mychip.sh`
   1. copy `configs/pulpissimo.json to` `configs/mychip.json` in `pulp-sdk/pulp-configs`
   2. edit it to point to our new `config/mychip.json`
   ```
[...]
export PULP_CURRENT_CONFIG=pulpissimo@config_file=chips/pulpissimo/mychip.json
[...]
   ```

1. Go to `pulp-sdk/runtime/hal` and the header `my_ip_v1.h`
2. Export in the hal Scons build script depending on the current chip name
```python
	[...]
	elif chip == 'pulpissimo':
		print('USING MY_IP DRIVER')
		append_file('hal/my_ip/my_ip_v1.h')
	[...]
```
	note more complex export logic possible, but we keep it simple here.

3. Try to also pass the second test without modifying `hello_driver.c`
