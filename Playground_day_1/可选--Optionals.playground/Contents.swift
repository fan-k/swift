import Cocoa

var greeting = "Hello, playground"

//Optionals  可选

//1.处理丢失的数据
//要使类型成为可选的，请在它后面添加一个问号
var age: Int? = nil
age = 38

//2.拆包选项  安全的解包
var name: String? = nil
//如果字符串是nil  读取其count是不安全的,解包常用if let语句

//3.guard解包
//if let的替代方案是guard let，它也会解包可选的

//4.强制解包
//在确认代码是安全的前提下 强制解包
let str = "5"
let num = Int(str)!

//5.隐式解包
//通过在类型名称后添加感叹号来创建隐式未包装的可选选项,如果它们为nil——您的代码会崩溃
let age1: Int! = nil


//6.nil 合并   ??默认值
//返回一个可选字符串
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"


//7.链式可选
/*
 Swift在使用可选时为我们提供了一个快捷方式：如果您想访问类似a.b.c和b是可选的东西，您可以在它之后写一个问号以启用可选的链：a.b?.c。
 当该代码运行时，Swift将检查b是否有值，如果是nil则该行的其余部分将被忽略——Swift将立即返回nil。但如果它有价值，它将被打开，并继续执行
 */
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

//8.可选的try
//try? 和try!
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}
//可选的try?   如果函数抛出错误，您将作为结果发送nil，否则您将获得包装为可选的返回值。
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
//try!   当您确定该功能不会失败时，您可以使用它。如果函数确实抛出错误，您的代码将崩溃。
try! checkPassword("sekrit")
print("OK!")
//可选初始化  使用init?()在自己的结构和类中编写这些而不是init()如果出现问题，则返回nil。然后，返回值将是您类型的可选值，您可以随心所欲地展开包装

struct Person {
    var id: String
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//类型转换  as?   as!



