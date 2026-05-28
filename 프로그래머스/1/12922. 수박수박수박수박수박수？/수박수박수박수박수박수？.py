def solution(n): 
    keyword = '수박' 
    if n % 2 == 0: 
        count = n//2 
    else: 
        count = (n+1)//2 
    result = keyword * count 
    return result[:n]