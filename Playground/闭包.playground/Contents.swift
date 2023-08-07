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

/*
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
*/
/*
/**缩写函数参数*/
//接收一个参数
func travel(action :(String) -> String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
//调用1
travel { (place:String) -> String in
    return "I'm going to \(place) in my car"
}
//Swift知道该闭包的参数必须是一个字符串，因此我们可以删除它：
travel { place -> String in
    return "I'm going to \(place) in my car"
}
//还知道闭包必须返回一个字符串，因此我们可以删除它：
travel { place in
    return "I'm going to \(place) in my car"
}
//由于闭包只有一行代码，该代码必须是返回值的代码，因此Swift也让我们删除return关键字：
travel { place in
    "I'm going to \(place) in my car"
}
//Swift有一个速记语法，可以让你走得更短。与其写place in不如让Swift为闭包的参数提供自动名称。这些用美元符号命名，然后是从0开始计数的数字。
travel {
    "I'm going to \($0) in my car"
}
 
 */

//闭包作为函数返回
func travel() ->(String) -> Void{
    return {
        print("I'm going to \($0)")
    }
}
let result = travel()
result("sss")
