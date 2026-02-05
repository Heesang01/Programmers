def solution(a, b):
    total = 0
    ab = [a, b]
    for i in range(min(ab), max(ab)+1):
        total += i
    return total