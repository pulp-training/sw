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

int main()
{
    volatile int tmp = 5;
    my_static_var_bss0 = tmp;
    my_static_var_bss1 = tmp;
    printf("bss0 = %d\n", my_static_var_bss0);
    printf("bss1 = %d\n", my_static_var_bss1);


    printf("Testing presence of additional memory bank at address 0x1b000000...\n");
    volatile uint32_t *new_bank_start = (uint32_t*) 0x1b000000;
    *new_bank_start = 0xabcdef12;
    if (*new_bank_start != 0xabcdef12) {
      printf("Failure. Read %x instead of 0xabcdef12\n", *new_bank_start);
      return -1;
    }
    printf("Success\n");

    printf("Verifying layout of additional SRAM banks in interleaved region:\n");
    printf("Tagging start and end of each bank...\n");
    volatile uint32_t *l2 = (uint32_t*) 0x1c010000;
    for (int i = 0; i < 8; i++) {
      l2[i] = i*2+1;
      l2[524288-8+i] = i*2+2;
    }
    printf("Done. Read back and verify...\n");
    for (int i = 0; i < 8; i++) {
      if (l2[i] != i*2+1) {
          printf("Start address (%x) of bank %d contains wrong value. Should %d but was %d.\n", &l2[i], i, i*2+1, l2[i]);
          return -1;
        }
        if (l2[524288-8+i] != i*2+2) {
          printf("End address (%x) of bank %d contains wrong value. Should %d but was %d.\n", &l2[524288-8+i], i, i*2+2, l2[524288-8+i]);
          return -1;
        }
    }
    printf("Success\nTest passed!\n");

    return 0;
}
