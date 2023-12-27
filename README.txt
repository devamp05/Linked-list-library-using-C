This linked-list library was created as part of an assgnment for my course
CMPT 332 Operating System Concepts. And copying code for completing similar 
assignment without permssion will be accounted as violation of copyrights.

To use it download the whole packae from this repository untar it and do make
and a library called liblist.a will be created which has features as described
bellow.


1.    LIST *ListCreate() makes a new, empty list, and returns its 
		reference on success. Returns a NULL pointer on failure.
2.    int ListCount(list) returns the number of items in list.
3.    void *ListFirst(list) returns a pointer to the first item in list and 
		makes the first item the current item.
4.    void *ListLast(list) returns a pointer to the last item in list 
		and makes the last item the current one.
5.    void *ListNext(list) advances the list's current node by one, and 
		returns a pointer to the new current item. If this operation attempts 
		to advances the current item beyond the end of the list, a NULL 
		pointer is returned.
6.    void *ListPrev(list) backs up the list's current node by one, and 
		returns a pointer to the new current item. If this operation attempts 
		to back up the current item beyond the start of the list, 
		a NULL pointer is returned.
7.    void *ListCurr(list) returns a pointer to the current item in list.
8.    int ListAdd(list, item) adds the new item to list directly after the 
		current item, and makes the new item the current item. 
		If the current pointer is at the end of the list, the 
		item is added at the end. Returns 0 on success, -1 on failure.
9.    int ListInsert(list, item) adds item to list directly before the 
		current item, and makes the new item the current one. If the current 
		pointer is at the start of the list, the item is added at the start.  
		Returns 0 on success, -1 on failure.
10.   int ListAppend(list, item) adds item to the end of list, and makes the 
		new item the current one. Returns 0 on success, -1 on failure.
11.    int ListPrepend(list, item) adds item to the front of list, and makes 
		the new item the current one. Returns 0 on success, -1 on failure.
12.    void *ListRemove(list) Return current item and take it out of list. 
		Make the next item the current one.
13.    void ListConcat(list1, list2) adds list2 to the end of list1. 
		The current pointer is set to the current pointer of list1. 
		List2 no longer exists after the operation.
14.    void ListFree(list, itemFree) delete list. itemFree is a pointer to a 
		routine that frees an item. It should be invoked (within ListFree) 
		as: (*itemFree)(itemToBeFreed);
15.    void *ListTrim(list) Return last item and take it out of list. 
		The current pointer shall be the new last item in the list.
16.    void *ListSearch(list, comparator, comparisonArg) searches list 
		starting at the current item until the end is reached or a match is 
		found. In this context, a match is determined by the comparator 
		parameter. This parameter is a pointer to a routine that takes as its 
		first argument an item pointer, and as its second argument 
		comparisonArg. Comparator returns 0 if the item and comparisonArg 
		don't match (i.e. didn't find it), or 1 if they do (i.e. found it). 
		Exactly what constitutes a match is up to the implementor of 
		comparator. If a match is found, the current pointer is left at the 
		matched item and the pointer to that item is returned. If no match 
		is found, the current pointer is left at the end of the list 
		and a NULL pointer is returned.

