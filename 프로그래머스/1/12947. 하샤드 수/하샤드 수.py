def solution(x):
    a = str(x)
    tmp = 0
    for i in a:
        tmp += int(i) 
    if x % tmp == 0:
        return True
    else:
        return False