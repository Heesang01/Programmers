def solution(absolutes, signs):
    result = []
    for a, s in zip(absolutes, signs):
        if s == True: 
            result.append(a)
        elif s == False:
            result.append(-a)
    return sum(result)