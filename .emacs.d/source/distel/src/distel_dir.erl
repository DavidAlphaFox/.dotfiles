-module(distel_dir).

-export([recursive_dir/1,recursive_dir/2]). 
-export([all_ebins/1]).

% @type name() = string() | atom() | binary().
-type name() :: string() | atom() | binary().
-spec recursive_dir(Dir::name()) ->{ok, [string()]} | {error, atom()}.
recursive_dir(Dir)->
    recursive_dir(Dir,all).

-spec recursive_dir(Dir::name(), Type::atom) ->{ok, [string()]} | {error, atom()}.
recursive_dir(Dir,Type)->
    case filelib:is_file(Dir) of
        true ->
            case filelib:is_dir(Dir) of
                true -> 
                    {ok, recursive_dir([Dir],Type, [])};
                false -> 
                    {error, enotdir}
            end;
        false -> 
            {error, enoent}
    end.
    
  
recursive_dir([], _Type, Acc) ->
    Acc;
recursive_dir([Path|Paths], Type, Acc) ->
    NewAcc = case filelib:is_dir(Path) of
                 false ->
                     case Type of
                         dir->
                             Acc;
                         _->
                            [Path|Acc]
                     end;
                 true ->
                     {ok, Listing} = file:list_dir(Path),
                     SubPaths = [filename:join(Path, Name) || Name <- Listing],
                     SubAcc = case Type of
                                  file ->
                                      Acc;
                                  _->
                                      [Path|Acc]
                              end,
                     recursive_dir(SubPaths,Type,SubAcc)
            end,
    recursive_dir(Paths,Type,NewAcc).
-spec all_ebins(Dir::name())->list().  
all_ebins(Dir)-> 
   F = fun(X,Acc) ->
               ProjDir = filename:dirname(X),
               case {filename:basename(X),filename:basename(filename:dirname(ProjDir))} of
                   {"ebin","deps"}->
                       [X|Acc];
                   {"ebin","apps"}->
                       [X|Acc];
                   _->
                       Acc
               end
        end,
   case recursive_dir(Dir,dir) of
       {ok,Paths}->
           ordsets:from_list(lists:foldl(F,[],Paths));
       _ ->
           []
  end.
