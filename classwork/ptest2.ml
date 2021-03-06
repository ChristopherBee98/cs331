(*Question 1a *)
fun diff x y = size(x) - size(y);
(*Question 1b *)
fun diff2 (x,y) = size(x) - size(y);
(*Question 1c *)
fun wild x = size(x);
(*Question 1d *)
fun apply f [] = [] |
apply f (a::b) = (f a)::(apply f b);
(*Question 1e *)
fun zipper f a b = f(a,b);
(*Question 3*)
diff('love' 'hate')
diff2('love, 'hate')
exception Error;
fun filter ([], n) = raise Error |
filter (a::b, n) = if (List.length(b)+1) mod n = 0 then a @ filter(b, n) else filter(b, n);
val list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
val list2 = [[1], [2], [3], [4], [5], [6], [7], [8], [9]];;
val pos = 3;
filter(list2, pos);