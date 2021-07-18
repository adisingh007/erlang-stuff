-module(merge_sort).

-export([merge_sort/1]).

merge([], []) -> [];
merge([], Right) -> Right;
merge(Left, []) -> Left;
merge([HLeft|Left], [HRight|Right]) when HLeft =< HRight ->
	[HLeft] ++ merge(Left, [HRight|Right]);
merge([HLeft|Left], [HRight|Right]) when HLeft > HRight ->
	[HRight] ++ merge([HLeft|Left], Right).


merge_sort(_, I, J) when I > J -> [];
merge_sort(Lst, I, J) when I == J -> [lists:nth(I, Lst)];
merge_sort(Lst, I, J) when I =< J ->
	Mid = (I+J) div 2,
	Left = merge_sort(Lst, I, Mid),
	Right = merge_sort(Lst, Mid+1, J),
	merge(Left, Right).



merge_sort(Lst) ->
	Length_Of_List = length(Lst),
	Sorted_List = merge_sort(Lst, 1, Length_Of_List),
	Sorted_List.
