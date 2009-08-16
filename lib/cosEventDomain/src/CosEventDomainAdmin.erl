%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosEventDomainAdmin
%% Source: /net/isildur/ldisk/daily_build/otp_prebuild_r13b01.2009-06-07_20/otp_src_R13B01/lib/cosEventDomain/src/CosEventDomainAdmin.idl
%% IC vsn: 4.2.21
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosEventDomainAdmin').
-ic_compiled("4_2_21").


%% Interface functions
-export(['CycleDetection'/0, 'AuthorizeCycles'/0, 'ForbidCycles'/0]).
-export(['DiamondDetection'/0, 'AuthorizeDiamonds'/0, 'ForbidDiamonds'/0]).

%%%% Constant: 'CycleDetection'
%%
'CycleDetection'() -> "CycleDetection".

%%%% Constant: 'AuthorizeCycles'
%%
'AuthorizeCycles'() -> 0.

%%%% Constant: 'ForbidCycles'
%%
'ForbidCycles'() -> 1.

%%%% Constant: 'DiamondDetection'
%%
'DiamondDetection'() -> "DiamondDetection".

%%%% Constant: 'AuthorizeDiamonds'
%%
'AuthorizeDiamonds'() -> 0.

%%%% Constant: 'ForbidDiamonds'
%%
'ForbidDiamonds'() -> 1.

