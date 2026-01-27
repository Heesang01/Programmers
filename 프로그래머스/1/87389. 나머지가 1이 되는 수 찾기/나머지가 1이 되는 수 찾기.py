def solution(n):
    a = []
    for i in range(1,n):
        if n % i == 1:
            a.append(i)
    return min(a)