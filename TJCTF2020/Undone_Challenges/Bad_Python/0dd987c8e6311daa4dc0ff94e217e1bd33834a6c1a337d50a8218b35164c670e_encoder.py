import random
A=bool
N=ord
y=sorted
Y=list
h=bin
T=int
e=range
F=len
L=open
O=repr
R=random.shuffle
import itertools
import functools
D=functools.reduce
S=A
P=lambda a,b:(N(a)^N(b)).to_bytes(1,'big')
B='[redacted - 15 chars]'
E=((0,3),(1,4),(0,1),(3,4),(2,3),(1,2))
B=y(Y(B))
x=lambda a,b:h((N(a)-N(b))^(T('1'*10,2)))[0]!='-'
def u(li):
 Q=[li[i::3]for i in e(3)]
 for i in Q:
  while not W(i):
   pass
 return Q
def W(i):
 R(i)
 a=[S(T(h(N('e'))[2:][-1]))]
 return[n(a,x(i[E[j][0]],i[E[j][1]]))for j in e(F(E))][-1]
def n(g,k):
 g[0]=g[0]and k
 return g[0]
f=u(B)
a=L('input.txt','r').read()
m='output.txt'
L(m,'w').write(O(b''.join([D(P,[(((N(a[i])&(~N(f[j][i%5])))|((~N(a[i]))&(N(f[j][i%5])))).to_bytes(1,"big"))for j in e(F(f))])for i in e(F(a))])))

#   if c%100000==0:
#     print(i)
#     print(c)
