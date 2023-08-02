import Cocoa

var greeting = "Hello, playground"



print(greeting)


greeting = "name1"



print(greeting)


greeting = "maomi"


print(greeting)



let string1 = "fwwfow wfwenfnew wgwg"

print(string1.count)

print(string1.uppercased())

print(string1.hasPrefix("f"))

print(string1.hasSuffix("f"))



let socre = 10

let max = 100_00_00_00


print(socre + 1)

print(socre * 2)

print(socre / 2)

print(socre - 2)

var co = 100

co *= 2
co /= 2
co -= 2
co += 2

print(co.isMultiple(of: 2))





let num = 0.1 + 0.2

print(num)


let a = 1
let b = 2.0

print(a + Int(b))

print(Double(a) + b)

var  gameStart =  true
var  gameOver = false
gameOver.toggle()



func printTimesTables(number:Int)  {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5)


//使用元组返回多个值
func  getUser() ->(firstName:String,secondName:String){
    ("k","C")
}
print(getUser().firstName)
print(getUser().1)

//省略输入 可变函数
func  square(numbers:Int...){
    for number in numbers {
            print("\(number) squared is \(number * number)")
        }
}
square(numbers: 1, 2, 3, 4, 5)

enum PasswordError:Error{
    case obvious
}

//抛出函数
func checkPassword(_ password:String )throws ->Bool{
    if password == "password" {
           throw PasswordError.obvious
       }

       return true
}

do{
    try checkPassword("password")
    print("That password is good!")
}catch{
    print("You can't use that password.")
}

//输入输出函数   &
func doubleInPlace(number:inout Int){
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)

