# kdb+ is incredible

kdb+ looks awesome!  
Must make time to try it...  
kOS is clearly the future

- Read: http://archive.vector.org.uk/art10501320
- The k language: http://www.kparc.com/k.txt

```
k has atom, list (2;`a), map [a:2;b:`a] and func {x+y+2} .
20 primitives/verbs, 6 operators/adverbs and 3 system functions.
one control structure $[b;t;f](rarely used) and no reserved words.

Verb       unary    Adverb               Noun  list null(inf)
: gets              '  each|bin          int   2 23   0N(0W)
+ plus     flip     /  over|join         float 2 .3   0n(0w)
- minus    negate   \  scan|split        bool  011b   0b
* times    first    ': eachprior         char  "ab"   " "
% divide   sqrt     /: eachright         name  `a`b   `
! mod|map  int|key  \: eachleft          date  2014.06.28
& min|and  where                         time  12:34:56.789
| max|or   reverse
< less     asc      System               list (2;3.4;`c)
> more     desc     0: file r/w(text)    map  [a:2;b::a]
= equal    group    1: file r/w(byte)    func {(+/x)%#x}  
~ match    not      2: open/msg/close    view f::32+1.8*c
, concat   enlist
^ except   null                          \l a.k  load
# take|rsh count                         \t:n x  time
_ drop|cut floor                         \w workspace
$ cast|pad string   $[b;t;f]     COND    \v variables
? find|rnd distinct ?[t;c;b[;a]] query   \f functions
@ at       type     @[x;i;f[;y]] amend   \a ancestors
. eval     val      .[x;i;f[;y]] dmend   \d directory

atoms are ifbcn(int float bool char name)or ymdhrst(datetime)
vector is unitype list of atoms, e.g. 2 3 is (2;3) and "ab" is ("a";"b")
matrix is uniform list of vectors, e.g. m:(0 1 2;1 2 3)
atomic functions penetrate to atoms, e.g. 2 3+m is (2 3 4;4 5 6)
function parameters are x y z, e.g. {z+x*y}[3;2;1] is 7
function call and indexing use []'s, e.g. {x+y}[1;2] is m[1;2] is 3
no precedence among verbs: 2*4-3 is 2* 4- 3 is 2
grammar: E:E;e|e e:nve|te| t:n|v v:tA|V n:t[E]|(E)|[E]|{E}|N
unary list needs ",", e.g. 2(atom) ,2(list)
unary verb arg needs ":", e.g. #'(take each) #:'(count each)
unary call doesn't need []'s, e.g. f[x] is f x

/ comment
\ exit
```

For the latest, follow: https://twitter.com/kxsystems
