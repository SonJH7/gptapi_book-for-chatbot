try:
    result = 10/0
except ZeroDivisionError as ze:
    print(f"0으로 나눌 수 없습니다.: {str(ze)}")
else: #예외 발생 안했을 때
    print(f"결과는 {result}입니다.") 
finally: #예외 여부와 상관없이 무조건 실행
    print("예외처리가 완료되었습니다.")