def MAX(A, B, C):
    if A > B and A > C:
        Max = A
        if B > C :
            Min = C
            Mid = B
        else:
            Min = B
            Mid = C
    else:
        if B > A and B > C:
            Max = B
            if A > C:
                Mid = A
                Min = C
            else:
                Mid = C
                Min = A
        else:
            Max = C
            if A > B:
                Mid = A
                Min = B
            else:
                Mid = B
                Min = A
    X = [Max, Mid, Min]
    return X
print("These numbers in sorted order are ", MAX(122,458, 306))

