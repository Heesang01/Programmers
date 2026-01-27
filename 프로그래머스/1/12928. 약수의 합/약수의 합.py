def solution(n):
    a = 0
    if 0 <= n <= 3000:
        for i in range(1,n+1):
            if n % i != 0:
                continue
            else:
                a += i
    return a