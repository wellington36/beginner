
def move(f,t) :
    print("Move disc from {} to {}!".format(f,t))
def moveVia(f,v,t) :
    move(f,v)
    move(v,t)
def foo(x):
    foo(x)
def hanoi(n,f,h,t) :
    if n==0 :
        pass
    else :
        hanoi(n-1,f,t,h)
        move(f,t)
        hanoi(n-1,h,f,t)
hanoi(int(input()),"A","B","C")