(*a, d*)
print("b\n");
fun inc x = inc (x + 1);
print("c\n");
fun in1 0 = 0 |
in1 x = in1(x + 1);
print("e\n");
fun temp2 x = (x 0) + (x 1);
print("f\n");
fun squash [] = [] |
squash({a,b}::c) = ((a+b):int)::(squash c);
print("g\n");
fun arbsquash f [] = [] |
arbsquash f ({a,b}::c) = ((f a b)::(arbsquash f c));
val list = [1, 4, 2, 20];
exception Error;
fun largest [] = raise Error |
largest(a::[]) = a |
largest(a::l) = if a > (largest l ) then a else (largest l);
largest(list);
1 :: [3, 4, 3];
2 :: [1];
1 :: [2];
val list2 = ([1], ["fuck"], [2.2]);
1 :: 2 :: nil;
("fuck", 6.9, 70)::("you", 9.11, 100)::nil;

fun addUp (x::[]) = x |
addUp(x::y) = x + addUp(y);

addUp(list);

fun subPairs ((x, y), (a, b)) = ((x-a),(y-b));

subPairs((1, 2), (3, 4));