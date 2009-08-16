%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyFilter_FilterAdmin
%% Source: /net/isildur/ldisk/daily_build/otp_prebuild_r13b01.2009-06-07_20/otp_src_R13B01/lib/cosNotification/src/CosNotifyFilter.idl
%% IC vsn: 4.2.21
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyFilter_FilterAdmin').
-ic_compiled("4_2_21").


%% Interface functions
-export([add_filter/2, add_filter/3, remove_filter/2]).
-export([remove_filter/3, get_filter/2, get_filter/3]).
-export([get_all_filters/1, get_all_filters/2, remove_all_filters/1]).
-export([remove_all_filters/2]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: add_filter
%% 
%%   Returns: RetVal
%%
add_filter(OE_THIS, New_filter) ->
    corba:call(OE_THIS, add_filter, [New_filter], ?MODULE).

add_filter(OE_THIS, OE_Options, New_filter) ->
    corba:call(OE_THIS, add_filter, [New_filter], ?MODULE, OE_Options).

%%%% Operation: remove_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
remove_filter(OE_THIS, Filter) ->
    corba:call(OE_THIS, remove_filter, [Filter], ?MODULE).

remove_filter(OE_THIS, OE_Options, Filter) ->
    corba:call(OE_THIS, remove_filter, [Filter], ?MODULE, OE_Options).

%%%% Operation: get_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
get_filter(OE_THIS, Filter) ->
    corba:call(OE_THIS, get_filter, [Filter], ?MODULE).

get_filter(OE_THIS, OE_Options, Filter) ->
    corba:call(OE_THIS, get_filter, [Filter], ?MODULE, OE_Options).

%%%% Operation: get_all_filters
%% 
%%   Returns: RetVal
%%
get_all_filters(OE_THIS) ->
    corba:call(OE_THIS, get_all_filters, [], ?MODULE).

get_all_filters(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_all_filters, [], ?MODULE, OE_Options).

%%%% Operation: remove_all_filters
%% 
%%   Returns: RetVal
%%
remove_all_filters(OE_THIS) ->
    corba:call(OE_THIS, remove_all_filters, [], ?MODULE).

remove_all_filters(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, remove_all_filters, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(add_filter) -> 
	{tk_long,[{tk_objref,"IDL:omg.org/CosNotifyFilter/Filter:1.0",
                             "Filter"}],
                 []};
oe_tc(remove_filter) -> 
	{tk_void,[tk_long],[]};
oe_tc(get_filter) -> 
	{{tk_objref,"IDL:omg.org/CosNotifyFilter/Filter:1.0","Filter"},
         [tk_long],
         []};
oe_tc(get_all_filters) -> 
	{{tk_sequence,tk_long,0},[],[]};
oe_tc(remove_all_filters) -> 
	{tk_void,[],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"remove_all_filters", oe_tc(remove_all_filters)},
	{"get_all_filters", oe_tc(get_all_filters)},
	{"get_filter", oe_tc(get_filter)},
	{"remove_filter", oe_tc(remove_filter)},
	{"add_filter", oe_tc(add_filter)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosNotifyFilter_FilterAdmin_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosNotifyFilter_FilterAdmin_impl', Reason, State).


%%%% Operation: add_filter
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, add_filter, [New_filter]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_FilterAdmin_impl', add_filter, [New_filter], OE_State, OE_Context, false, false);

%%%% Operation: remove_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
handle_call({_, OE_Context, remove_filter, [Filter]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_FilterAdmin_impl', remove_filter, [Filter], OE_State, OE_Context, false, false);

%%%% Operation: get_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
handle_call({_, OE_Context, get_filter, [Filter]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_FilterAdmin_impl', get_filter, [Filter], OE_State, OE_Context, false, false);

%%%% Operation: get_all_filters
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, get_all_filters, []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_FilterAdmin_impl', get_all_filters, [], OE_State, OE_Context, false, false);

%%%% Operation: remove_all_filters
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, remove_all_filters, []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_FilterAdmin_impl', remove_all_filters, [], OE_State, OE_Context, false, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosNotifyFilter_FilterAdmin_impl', OldVsn, State, Extra).

