%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 2009. All Rights Reserved.
%% 
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%% 
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%% 
%% %CopyrightEnd%

-module(ex_choices).

-behavoiur(wx_object).

-export([start/1, init/1, terminate/2,  code_change/3,
	 handle_info/2, handle_call/3, handle_event/2]).

-include_lib("wx/include/wx.hrl").

-record(state, 
	{
	  parent,
	  config,
	  list_box
	 }).


start(Config) ->
    wx_object:start_link(?MODULE, Config, []).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
init(Config) ->
        wx:batch(fun() -> do_init(Config) end).
do_init(Config) ->
    Parent = proplists:get_value(parent, Config),  
    Panel = wxScrolledWindow:new(Parent, []),

    %% Setup sizers
    MainSizer = wxBoxSizer:new(?wxVERTICAL),
    ListBoxSizer = wxStaticBoxSizer:new(?wxVERTICAL, Panel, 
				 [{label, "wxListBox"}]),
    Sizer = wxBoxSizer:new(?wxHORIZONTAL),
    Sizer2 = wxBoxSizer:new(?wxHORIZONTAL),

    Choices = ["one","two","three",
	       "four","five","six",
	       "seven","eight","nine",
	       "ten", "eleven", "twelve"],

    %%================%%
    %%     ListBox    %%
    %%================%%
    ListBox = wxListBox:new(Panel, 1, [{size, {-1,100}},
				       {choices, ["Multiple selection"|Choices]},
				       {style, ?wxLB_MULTIPLE}]),
    ListBox2 = wxListBox:new(Panel, 2, [{size, {-1,100}},
					{choices, ["Single selection"|Choices]},
					{style, ?wxLB_SINGLE}]),

    %%================%%
    %%     Choice     %%
    %%================%%
    Sizer3  = wxBoxSizer:new(?wxHORIZONTAL),
    ChoiceSizer = wxStaticBoxSizer:new(?wxVERTICAL, Panel, 
				 [{label, "wxChoice"}]),
    Choice = wxChoice:new(Panel, 4, [{choices, Choices}]),
    wxChoice:connect(Choice,command_choice_selected),
    %%================%%
    %%    SpinCtrl    %%
    %%================%%
    SpinSizer = wxStaticBoxSizer:new(?wxVERTICAL, Panel, 
				     [{label, "wxSpinCtrl"}]),
    SpinCtrl = wxSpinCtrl:new(Panel, []),
    wxSpinCtrl:setRange(SpinCtrl, 0, 100),
    wxChoice:connect(SpinCtrl,command_spinctrl_updated),
    %%================%%
    %%    ComboBox    %%
    %%================%%
    ComboSizer = wxStaticBoxSizer:new(?wxVERTICAL, Panel, 
				     [{label, "wxComboBox"}]),
    ComboBox = wxComboBox:new(Panel, 5, [{choices, Choices}]),
    wxComboBox:setValue(ComboBox, "Default value"),
    wxComboBox:connect(ComboBox, command_combobox_selected),

    %%================%%
    %%  Add to sizers %%
    %%================%%
    Options = [{border,4}, {flag, ?wxALL}],
    wxSizer:add(Sizer, ListBox, Options),
    wxSizer:add(Sizer, ListBox2, Options),

    wxSizer:add(ChoiceSizer, Choice, Options),
    wxSizer:add(SpinSizer, SpinCtrl, Options),
    wxSizer:add(Sizer3, ChoiceSizer, []),
    wxSizer:add(Sizer3, SpinSizer, [{border, 4}, {flag, ?wxLEFT}]),

    wxSizer:add(ComboSizer, ComboBox, Options),

    wxSizer:add(ListBoxSizer, Sizer, Options),
    wxSizer:add(ListBoxSizer, Sizer2, Options),
    wxSizer:add(MainSizer, ListBoxSizer, Options),
    wxSizer:add(MainSizer, Sizer3, Options),
    wxSizer:add(MainSizer, ComboSizer, Options),

    wxScrolledWindow:setScrollRate(Panel, 5, 5),
    wxPanel:setSizer(Panel, MainSizer),
    {Panel, #state{parent=Panel, config=Config,
		   list_box = ListBox}}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Callbacks handled as normal gen_server callbacks
handle_info(Msg, State) ->
    demo:format(State#state.config, "Got Info ~p\n",[Msg]),
    {noreply, State}.

handle_call(Msg, _From, State) ->
    demo:format(State#state.config,"Got Call ~p\n",[Msg]),
    {reply, {error,nyi}, State}.

%% Async Events are handled in handle_event as in handle_info
handle_event(#wx{obj = ComboBox,
		 event = #wxCommand{type = command_combobox_selected}},
	     State = #state{}) ->
    Value = wxComboBox:getValue(ComboBox),
    demo:format(State#state.config,"Selected wxComboBox ~p\n",[Value]),
    {noreply, State};
handle_event(#wx{event = #wxCommand{type = command_choice_selected,
					cmdString = Value}},
	     State = #state{}) ->
    demo:format(State#state.config,"Selected wxChoice ~p\n",[Value]),
    {noreply, State};
handle_event(#wx{event = #wxSpin{type = command_spinctrl_updated,
				 commandInt = Int}},
	     State = #state{}) ->
    demo:format(State#state.config,"wxSpinCtrl changed to ~p\n",[Int]),
    {noreply, State};
handle_event(Ev = #wx{}, State = #state{}) ->
    demo:format(State#state.config,"Got Event ~p\n",[Ev]),
    {noreply, State}.

code_change(_, _, State) ->
    {stop, ignore, State}.

terminate(_Reason, _State) ->
    ok.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Local functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

