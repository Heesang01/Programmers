def solution(numbers):
    num = [1,2,3,4,5,6,7,8,9,0]
    for a in numbers:
        num.remove(a)
    return sum(num)