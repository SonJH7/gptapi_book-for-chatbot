class Car:
    
    def __init__(self):
        self.speed = 0
        
    def accelerate(self, speed_increase):
        self.speed +=speed_increase 
        print("가속 후 속도:", self.speed)
        
    def decelerate(self, speed_decrease):
        if self.speed >= speed_decrease:
            self.speed-=speed_decrease
            print("감속 후 속도:", self.speed)
        else:
        	self.stop()
    def stop(self):
        self.speed=0
        print("자동차가 멈췄습니다.")
        
car = Car()
car.accelerate(10)
car.accelerate(20)
car.decelerate(20)
car.decelerate(20)