datatype 'a tree = EMPTY | LEAF of 'a | NODE of 'a * 'a tree * 'a tree;

val t = NODE(7,EMPTY,EMPTY);

fun height EMPTY = 0 |
    height (LEAF _) = 1 |
    height (NODE(i,l,r)) = 1 + Int.max(height(l),height(r));

height(t);

 fun insertTree (item: int) EMPTY = LEAF(item) |
    insertTree (item: int) (LEAF i) = if (item = i) then LEAF(i) else
                                  if (item < i) then NODE(i,(LEAF item),EMPTY) else NODE(i,EMPTY,(LEAF item)) |
    insertTree (item:int) (NODE (i,l,r)) = if (item = i) then NODE(i,l,r) else
                                     if (item < i) then NODE(i,(insertTree item l),r) else NODE(i,l,(insertTree item r));
                                    
fun listToTree func [] T = T |
    listToTree func (a::l) T = listToTree func l (func a T);
   
val iTree = listToTree insertTree [1,3,8,34,2,91,100,45] EMPTY;

fun append [] l = l |
    append (a::b) l = a::(append b l);

fun nodeList EMPTY = [] |
    nodeList (LEAF _) = [] |
    nodeList (NODE(i,l,r)) = (append (nodeList l) (i::(nodeList r)));
   
    nodeList iTree;

fun insert a [] = a::[] 
    insert a (b::l) = if (a < b) then a::b::l
                                 else b::(insert a l);

fun insertSort ([]) = [] 
    insertSort (a::[]) = a::[] 
    insertSort (a::l) = insert a(insertSort l);