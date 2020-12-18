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

#include <stdio.h>
#include <pulp.h>

/* these should end up in the bss section */
static int my_static_var_bss0;
static int my_static_var_bss1;

volatile L2_DATA uint32_t huge_array[500000];
int main()
{
    volatile int tmp = 5;
    my_static_var_bss0 = tmp;
    my_static_var_bss1 = tmp;
    printf("bss0 = %d\n", my_static_var_bss0);
    printf("bss1 = %d\n", my_static_var_bss1);
    printf("huge_array_end = %d\n", huge_array[499999]);
    return 0;
}
