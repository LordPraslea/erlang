%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 2008-2009. All Rights Reserved.
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
%% This file is generated DO NOT EDIT

%% @doc See external documentation: <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html">wxBrush</a>.
%% @type wxBrush().  An object reference, The representation is internal
%% and can be changed without notice. It can't be used for comparsion
%% stored on disc or distributed for use on other nodes.

-module(wxBrush).
-include("wxe.hrl").
-export([destroy/1,getColour/1,getStipple/1,getStyle/1,isHatch/1,isOk/1,new/0,
  new/1,new/2,setColour/2,setColour/4,setStipple/2,setStyle/2]).

%% inherited exports
-export([parent_class/1]).

%% @hidden
parent_class(_Class) -> erlang:error({badtype, ?MODULE}).

%% @spec () -> wxBrush()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushwxbrush">external documentation</a>.
new() ->
  wxe_util:construct(?wxBrush_new_0,
  <<>>).

%% @spec (X::term()) -> wxBrush()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushwxbrush">external documentation</a>.
%% <br /> Alternatives: 
%% <p><c>
%% new(Colour::wx:colour()) -> new(Colour, []) </c></p>
%% <p><c>
%% new(StippleBitmap::wxBitmap:wxBitmap()) -> wxBrush() </c>
%% </p>

new(Colour)
 when tuple_size(Colour) =:= 3; tuple_size(Colour) =:= 4 ->
  new(Colour, []);
new(#wx_ref{type=StippleBitmapT,ref=StippleBitmapRef}) ->
  ?CLASS(StippleBitmapT,wxBitmap),
  wxe_util:construct(?wxBrush_new_1,
  <<StippleBitmapRef:32/?UI>>).

%% @spec (Colour::wx:colour(), [Option]) -> wxBrush()
%% Option = {style, integer()}
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushwxbrush">external documentation</a>.
new(Colour, Options)
 when tuple_size(Colour) =:= 3; tuple_size(Colour) =:= 4,is_list(Options) ->
  MOpts = fun({style, Style}, Acc) -> [<<1:32/?UI,Style:32/?UI>>|Acc];
          (BadOpt, _) -> erlang:error({badoption, BadOpt}) end,
  BinOpt = list_to_binary(lists:foldl(MOpts, [<<0:32>>], Options)),
  wxe_util:construct(?wxBrush_new_2,
  <<(wxe_util:colour_bin(Colour)):16/binary, BinOpt/binary>>).

%% @spec (This::wxBrush()) -> wx:colour()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushgetcolour">external documentation</a>.
getColour(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:call(?wxBrush_GetColour,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxBrush()) -> wxBitmap:wxBitmap()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushgetstipple">external documentation</a>.
getStipple(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:call(?wxBrush_GetStipple,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxBrush()) -> integer()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushgetstyle">external documentation</a>.
getStyle(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:call(?wxBrush_GetStyle,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxBrush()) -> bool()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushishatch">external documentation</a>.
isHatch(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:call(?wxBrush_IsHatch,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxBrush()) -> bool()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushisok">external documentation</a>.
isOk(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:call(?wxBrush_IsOk,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxBrush(), Col::wx:colour()) -> ok
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushsetcolour">external documentation</a>.
setColour(#wx_ref{type=ThisT,ref=ThisRef},Col)
 when tuple_size(Col) =:= 3; tuple_size(Col) =:= 4 ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:cast(?wxBrush_SetColour_1,
  <<ThisRef:32/?UI,(wxe_util:colour_bin(Col)):16/binary>>).

%% @spec (This::wxBrush(), R::integer(), G::integer(), B::integer()) -> ok
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushsetcolour">external documentation</a>.
setColour(#wx_ref{type=ThisT,ref=ThisRef},R,G,B)
 when is_integer(R),is_integer(G),is_integer(B) ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:cast(?wxBrush_SetColour_3,
  <<ThisRef:32/?UI,R:32/?UI,G:32/?UI,B:32/?UI>>).

%% @spec (This::wxBrush(), Stipple::wxBitmap:wxBitmap()) -> ok
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushsetstipple">external documentation</a>.
setStipple(#wx_ref{type=ThisT,ref=ThisRef},#wx_ref{type=StippleT,ref=StippleRef}) ->
  ?CLASS(ThisT,wxBrush),
  ?CLASS(StippleT,wxBitmap),
  wxe_util:cast(?wxBrush_SetStipple,
  <<ThisRef:32/?UI,StippleRef:32/?UI>>).

%% @spec (This::wxBrush(), Style::integer()) -> ok
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxbrush.html#wxbrushsetstyle">external documentation</a>.
setStyle(#wx_ref{type=ThisT,ref=ThisRef},Style)
 when is_integer(Style) ->
  ?CLASS(ThisT,wxBrush),
  wxe_util:cast(?wxBrush_SetStyle,
  <<ThisRef:32/?UI,Style:32/?UI>>).

%% @spec (This::wxBrush()) -> ok
%% @doc Destroys this object, do not use object again
destroy(Obj=#wx_ref{type=Type}) -> 
  ?CLASS(Type,wxBrush),
  wxe_util:destroy(?DESTROY_OBJECT,Obj),
  ok.
