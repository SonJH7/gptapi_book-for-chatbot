a=(1,2,3,3)
print("a:", a) #중복 허용, 인덱스로 접근, 변경을 시도하면 오류

numbers = 1,2,3 #패킹
a,b,c = numbers #언패킹

print(a,b,c) # 1, 2, 3

#활용

def calculate(a, b):
    sum = a+b
    product = a*b
    return sum, product

sum_v,product_v = calculate(3,4)
print(sum_v, product_v) # 7, 12