%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_CosEventComm
%% Source: /net/isildur/ldisk/daily_build/otp_prebuild_r13b01.2009-06-07_20/otp_src_R13B01/lib/cosEvent/src/CosEventComm.idl
%% IC vsn: 4.2.21
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_CosEventComm).
-ic_compiled("4_2_21").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:omg.org/CosEventComm:1.0", "CosEventComm", "1.0"),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosEventComm/Disconnected:1.0", "Disconnected", "1.0", []),

    _OE_2 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosEventComm/PushConsumer:1.0", "PushConsumer", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosEventComm/PushConsumer/push:1.0", "push", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="data", type=tk_any, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventComm/Disconnected:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosEventComm/PushConsumer/disconnect_push_consumer:1.0", "disconnect_push_consumer", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [], [], []),

    _OE_3 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosEventComm/PushSupplier:1.0", "PushSupplier", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosEventComm/PushSupplier/disconnect_push_supplier:1.0", "disconnect_push_supplier", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [], [], []),

    _OE_4 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosEventComm/PullSupplier:1.0", "PullSupplier", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosEventComm/PullSupplier/pull:1.0", "pull", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any), 'OP_NORMAL', [], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventComm/Disconnected:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosEventComm/PullSupplier/try_pull:1.0", "try_pull", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any), 'OP_NORMAL', [#parameterdescription{name="has_event", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean), mode='PARAM_OUT'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventComm/Disconnected:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosEventComm/PullSupplier/disconnect_pull_supplier:1.0", "disconnect_pull_supplier", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [], [], []),

    _OE_5 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosEventComm/PullConsumer:1.0", "PullConsumer", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosEventComm/PullConsumer/disconnect_pull_consumer:1.0", "disconnect_pull_consumer", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [], [], []),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosEventComm/Disconnected:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:omg.org/CosEventComm/Disconnected:1.0"})
 end.


%% No included idl-files detected.
include_reg_test(_OE_IFR) -> true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:omg.org/CosEventComm/PullConsumer:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosEventComm/PullSupplier:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosEventComm/PushSupplier:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosEventComm/PushConsumer:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosEventComm/Disconnected:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:omg.org/CosEventComm:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    [].

