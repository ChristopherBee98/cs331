exception Error;

(*Question 1 Function*)
(**Question 1 Funcion **)
fun getSomething (i,n) =
    if(n < 0 orelse n > length(i)-1)
       then raise Error
    else(
       List.nth(i,n)
      ); 

(*Question 2 Function*)
datatype ops = PLUS | MINUS | TIMES | DIV;
datatype calctree = LEAF of int | CALC of ops * calctree * calctree;

fun valueOfExpression (LEAF(x): calctree) = x |
valueOfExpression (CALC(operation, value1, value2): calctree) =
if operation = PLUS
               then valueOfExpression(value1) + valueOfExpression(value2)
else if operation = MINUS
               then valueOfExpression(value1) - valueOfExpression(value2)
else if operation = TIMES
               then valueOfExpression(value1) * valueOfExpression(value2)
else (
               valueOfExpression(value1) div valueOfExpression(value2) );

valueOfExpression(CALC(TIMES, LEAF(2), LEAF(3)));

(*Question 3 Function*)
