(*Question 1 Function*)
fun getSomething(i, n) =
if n = 1 then hd i
else getSomething(tl i, n-1);

(*Question 3 Function*)
datatype ops = PLUS | MINUS | TIMES | DIV;
datatype calctree = LEAF of int | CALC of ops*calctree*calctree;
 exception IllFormedString;
    
    fun parseDigit c = if (c > #"9" orelse c < #"0") then raise IllFormedString 
                          else ord(c) - 48;
                          
    fun rest s = substring(s, 1, size(s)-1);
    
    fun helper s 0 n = n |
        helper s i n = helper (rest s) (i-1) (n*10 + (parseDigit(String.sub(s,0))));
    
    fun parseInt(s) = helper s (size s) 0;
val list = ["*", "3", "4"];

fun calctreeAndString i =
if (getSomething(i, 0) = "+" orelse "-" orelse "*" orelse "/")
then CALC(getSomething(i, 0), getSomething(i, 1), getSomething(i, 2))
else
then i; 


calctreeAndString(list);