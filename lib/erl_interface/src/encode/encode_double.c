/*
 * %CopyrightBegin%
 * 
 * Copyright Ericsson AB 1998-2009. All Rights Reserved.
 * 
 * The contents of this file are subject to the Erlang Public License,
 * Version 1.1, (the "License"); you may not use this file except in
 * compliance with the License. You should have received a copy of the
 * Erlang Public License along with this software. If not, it can be
 * retrieved online at http://www.erlang.org/.
 * 
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
 * the License for the specific language governing rights and limitations
 * under the License.
 * 
 * %CopyrightEnd%
 */
#include <stdio.h>
#include <string.h>
#include "eidef.h"
#include "eiext.h"
#include "putget.h"

int ei_encode_double(char *buf, int *index, double p)
{
  char *s = buf + *index;
  char *s0 = s;

  if (!buf) s ++;
  else {
    put8(s,ERL_FLOAT_EXT);
    memset(s, 0, 31);
    sprintf(s, "%.20e", p);
  }
  s += 31;

  *index += s-s0; 

  return 0; 
}

