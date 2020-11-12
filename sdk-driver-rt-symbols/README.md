# Instructions
Note that this exercise needs the setup from the previous exercise,
`sdk-driver-header`.

0. Create `my_ip/my_ip.c` in `pulp-sdk/runtime/pulp-rt/drivers`. This the
   implementation file of the driver.
1. Create `rt/rt_my_ip.h` in `pulp-sdk/runtime/pulp-rt/include`. Expose the
   correct declarations.
2. Add an `#include` statement to `rt/rt_api_decl.h` to make sure the
   declaration is visible to your program when include "pulp.h"
3. Try to pass the test
