datatype intTree = EMPTY | LEAF of int | NODE of int * intTree * intTree;
val x = EMPTY;
val t = NODE(7, EMPTY, EMPTY);
val t = NODE(7, LEAF(8), LEAF(9));
fun getValues(NODE(v,l,r): intTree): int list = getValues(l) @ [v] @ getValues(r) |
getValues(EMPTY) = [];

(*getValues(t)*)

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

valueOfExpression(CALC(TIMES, LEAF(3), LEAF(4)));