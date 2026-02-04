def solution(n):
    a = str(n)
    list_a = []
    for i in range(len(a)-1, -1, -1):
        list_a.append(int(a[i]))
    return list_a

