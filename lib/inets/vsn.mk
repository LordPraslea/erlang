#-*-makefile-*-   ; force emacs to enter makefile-mode

# %CopyrightBegin%
# 
# Copyright Ericsson AB 1997-2009. All Rights Reserved.
# 
# The contents of this file are subject to the Erlang Public License,
# Version 1.1, (the "License"); you may not use this file except in
# compliance with the License. You should have received a copy of the
# Erlang Public License along with this software. If not, it can be
# retrieved online at http://www.erlang.org/.
# 
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and limitations
# under the License.
# 
# %CopyrightEnd%

INETS_VSN = 5.1
PRE_VSN   =
APP_VSN   = "inets-$(INETS_VSN)$(PRE_VSN)"

TICKETS = OTP-7994 OTP-7998 OTP-8001 OTP-8004 OTP-8005 

# TICKETS_5_0_15 = OTP-7994 OTP-7998 OTP-8001 OTP-8005

TICKETS_5_0_14 = OTP-7882 OTP-7883 OTP-7888 OTP-7950 OTP-7976

TICKETS_5.0.13 = \
	OTP-7723 \
	OTP-7724 \
	OTP-7726 \
	OTP-7463 \
	OTP-7815 \
	OTP-7857 

# TICKETS_5.0.12 = \
# 	OTP-7636
# 
# TICKETS_5.0.11 = \
# 	OTP-7574 \
# 	OTP-7597 \
# 	OTP-7598 \
# 	OTP-7605 
# 
# TICKETS_5.0.10 = \
# 	OTP-7450 \
# 	OTP-7454 \
# 	OTP-7490 \
# 	OTP-7512 
# 
# TICKETS_5.0.9 = \
# 	OTP-7257 \
# 	OTP-7323 \
# 	OTP-7341 
# 
# TICKETS_5.0.8 = \
# 	OTP-7315 \
#         OTP-7321
# 
# TICKETS_5.0.7 = \
# 	OTP-7304	
# 
# TICKETS_5.0.6 = \
# 	OTP-7266
# 
# TICKETS_5.0.5 = \
# 	OTP-7220 \
#         OTP-7221
# 
# TICKETS_5.0.4 = \
#         OTP-7173
# 

