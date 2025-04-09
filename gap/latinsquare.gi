#
# latinsquare: A package for counting and generating Latin squares in GAP.
#
# Implementations
#
InstallGlobalFunction(LatinSquareRow, function(n, r, c)
    local rowList, len_c, i, subRows;
    rowList := [];
    len_c := Length(c);
    if len_c = n then
        Add(rowList, c);
    fi;
    for i in [1..n] do
        if not i in c and not i in r[ len_c + 1 ] then
            subRows := LatinSquareCountRow(n, r, Concatenation(c, [i]));
            rowList := Concatenation(rowList, subRows);
        fi;
    od;
    return rowList;
end);

InstallGlobalFunction(LatinSquareCountRow, function(n, k, r, c)
    local count, len_c, i;
    count := 0;
    len_c := Length(c);
    if len_c = n then
        count := count + LatinSquareCount(n, Concatenation(k, [c]));
    fi;
    for i in [1..n] do
        if not i in c and not i in r[ len_c + 1 ] then
            count := count + LatinSquareCountRow(n, k, r, Concatenation(c, [i]));
        fi;
    od;
    return count;
end);

InstallGlobalFunction(LatinSquareCount, function(n, c...)
    local r, i;
	if Length(c) = 0 then
		c := [];
	else
		if Length(c) > 1 then
			Error("Warning: more than one argument passed to LatinList - we can ignore all but the first one");
		fi;
		c := c[1];
	fi;
    if Length(c) = n then
        return 1;
    else
        if Length(c) = 0 then
            r := [];
            for i in [1..n] do
                Add(r, []);
            od;
        else
            r := List([1..n], i -> List(c, row -> row[i]));
        fi;
        return LatinSquareCountRow(n, c, r, []);
    fi;
end);

InstallGlobalFunction(LatinSquareList, function(n, c...)
    local latinList, r, rows, subLatin, i;
	if Length(c) = 0 then
		c := [];
	else
		if Length(c) > 1 then
			Error("Warning: more than one argument passed to LatinList - we can ignore all but the first one");
		fi;
		c := c[1];
	fi;
    if Length(c) = n then
        return [ c ];
    else
        if Length(c) = 0 then
            r := [];
            for i in [1..n] do
                Add(r, []);
            od;
        else
            r := List([1..n], i -> List(c, row -> row[i]));
        fi;
        rows := LatinSquareCountRow(n, r, []);
        latinList := [];
        for i in rows do
            subLatin := LatinSquareList(n, Concatenation(c, [i]));
            latinList := Concatenation(latinList, subLatin);
        od;
        return latinList;
    fi;
end);
