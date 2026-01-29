import math

def solution(n):
    x = math.isqrt(n)
    return (x+1)**2 if x*x == n else -1