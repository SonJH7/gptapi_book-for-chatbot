#딕셔너리 패킹 : 함수의 입력값을 딕셔너리 자료형으로 만드는 작업 
# 호출 시 "매개변수명=값" 형식을 넘기고 
# 호출된 함수에서 "**변수명"으로 받으면 딕셔너리 패킹이 일어남

#딕셔너리 언패킹 : 딕셔너리 데이터를 함수의 매개변수와 값으로 바꾸는 작업 
# 호출 시 "**딕셔너리변수명"으로 기술하면 각각의 키와 값이 "매개변수명=값"의 형태로 풀려 함수의 입력값으로 자연스럽게 전달 가능

def func2(x, y):
    print("func2:", x+y)
    
def func1(**kwargs):
    print("type(kwargs): ", type(kwargs), kwargs)
    print("func1:", kwargs['x'] + kwargs['y'])
    func2(**kwargs)

func1(x=10, y=20)