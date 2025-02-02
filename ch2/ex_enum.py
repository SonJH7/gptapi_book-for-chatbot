#enumerate 데이터를 순서대로 불러와 반환

lst = [1,2,3]
for idx, element in enumerate(lst, start=1): #기본은 0부터 시작
    print(f"{idx}번째, element: {element}")