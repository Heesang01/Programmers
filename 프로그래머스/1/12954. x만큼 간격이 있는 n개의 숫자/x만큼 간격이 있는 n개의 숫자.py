def solution(x, n):
    a = []
    b = 0
    for i in range(n):
        b += x
        a.append(b)
    return a