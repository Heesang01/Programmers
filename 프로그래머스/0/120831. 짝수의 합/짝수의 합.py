def solution(n):
    s = 0
    if 0 < n <= 1000:
        for i in range(0,n+1):
            if i%2 == 0:
                s = s + i
            else:
                pass
        return s