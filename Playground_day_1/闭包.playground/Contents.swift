import Cocoa

var greeting = "Hello, playground"


//闭包 简易理解是把函数当做参数使用的一种方式

//创建一个简易闭包

let  drivie = {
    print("简易闭包函数")
}
drivie()

//闭包接收参数
let driving = { (place :String) in
    print("I'm going to \(place) in my car")
}
driving("hhh")

//闭包返回值
let drivieWithReturn = {(place:String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivieWithReturn("London")
print(message)

//闭包当做参数
func travel (action:()->Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: drivie)

//尾随闭包  闭包作为最后一个参数时
travel {
    print("ssss")
}
