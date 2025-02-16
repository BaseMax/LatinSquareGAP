DeclareGlobalFunction("Row");
DeclareGlobalFunction("CountRow");
DeclareGlobalFunction("CountLatin");
DeclareGlobalFunction("ListLatin");

InstallGlobalFunction(Row, function(n, r, c)
    local rowList, len_c, i, subRows;
    rowList := [];
    len_c := Length(c);
    if len_c = n then
        Add(rowList, c);
    fi;
    for i in [1..n] do
        if not i in c and not i in r[ len_c + 1 ] then
            subRows := Row(n, r, Concatenation(c, [i]));
            rowList := Concatenation(rowList, subRows);
        fi;
    od;
    return rowList;
end);

InstallGlobalFunction(CountRow, function(n, k, r, c)
    local count, len_c, i;
    count := 0;
    len_c := Length(c);
    if len_c = n then
        count := count + CountLatin(n, Concatenation(k, [c]));
    fi;
    for i in [1..n] do
        if not i in c and not i in r[ len_c + 1 ] then
            count := count + CountRow(n, k, r, Concatenation(c, [i]));
        fi;
    od;
    return count;
end);

InstallGlobalFunction(CountLatin, function(n, k)
    local r, i;
    if Length(k) = n then
        return 1;
    else
        if Length(k) = 0 then
            r := [];
            for i in [1..n] do
                Add(r, []);
            od;
        else
            r := List([1..n], i -> List(k, row -> row[i]));
        fi;
        return CountRow(n, k, r, []);
    fi;
end);

InstallGlobalFunction(ListLatin, function(n, c)
    local latinList, r, rows, subLatin, i;
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
        rows := Row(n, r, []);
        latinList := [];
        for i in rows do
            subLatin := ListLatin(n, Concatenation(c, [i]));
            latinList := Concatenation(latinList, subLatin);
        od;
        return latinList;
    fi;
end);
