name = "손정훈"
age = 23
gender = "남성"

s1 = "페르소나는 {age}세 {name}라는 {gender}입니다.".format(name=name, age=age, gender=gender)
print(f"s1 => {s1}")

s2 = f"페르소나는 {age}세 {name}라는 {gender}입니다."
print(f"s2 => {s2}")