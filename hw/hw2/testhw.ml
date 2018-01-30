(*This is for testing*)
val x = 5
val y = 3
fun swap (x, y) = (y, x);
swap(x, y);
fun testfunc n = n + 1
fun append [] l = l |
append (a::b) l = a::(append b l);

exception Error

(**Question 1 Funcion **)
fun getSomething (i,n) =
    if(n < 0 orelse n > length(i)-1)
       then raise Error
    else(
       List.nth(i,n)
      );

val list1 = [true,false,true,false];
val list2 = [1,2,3,4,5];

getSomething(list1, 2);

(**Question 2 Function**)
datatype ops = PLUS| MINUS | TIMES | DIV
datatype calctree = LEAF of int | CALC of ops * calctree * calctree;

fun calcFunction(value1: calctree, value2: calctree, calctree: ops) =
    if(calculate(ops) = PLUS)
      then calcFunction(CALC(PLUS, value1,value2))

    else if(calculate(ops) = MINUS)
      then calcFunction(CALC(MINUS, value1,value2))

    else if(calculate(ops) = TIMES)
      then calcFunction(CALC(TIMES, value1,value2))

    else(
        calcFunction(CALC(DIV, value1,value2)));


(**Question 3 Function**) 
exception IllFormedString;

fun parseDigit c = if (c > #"9" orelse c < #"0")
                       then raise IllFormedString
                   else
                       ord(c) - 48;

fun rest s = substring(s, 1, size(s)-1);

fun helper s 0 n = n |
    helper s i n = helper (rest s) (i-1) (n*10 + (parseDigit(String.sub(s,0))));

 fun parseInt(s) = helper s (size s) 0;





append(false::[])list1;
append(3::[]) list2;
