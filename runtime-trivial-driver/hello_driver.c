/*
 * Copyright (C) 2020 ETH Zurich and University of Bologna
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* This exercise shows how to call a pulp-runtime driver function. Do NOT edit
 * this file. */

#include <pulp.h>
#include <stdio.h>

int main()
{
#ifdef MY_DRIVER_MACRO
    puts("MY_DRIVER_MACRO successfully included from pulp-runtime");
    puts("Calling rt_my_ip_init() from pulp-runtime");
    rt_my_ip_init();
#else
    puts("Fail MY_DRIVER_MACRO\n");
    return 1;
#endif

#ifdef MY_OTHER_DRIVER_MACRO
    puts("Calling rt_my_ip_other_init() from pulp-runtime");
    if (rt_my_ip_other_init())
	return 0;
#else
    puts("Fail MY_OTHER_DRIVER_MACRO\n");
    return 1;
#endif
}
