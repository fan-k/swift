import Cocoa

var greeting = "Hello, playground"

//协议

//声明一个协议

protocol Payable{
    func calculateWages() -> Int
}

//协议继承、减少重复的代码

protocol Product{
    var price: Double { get set }
    var weight: Int { get set }
}
//Computer 继承Product  拥有Product的协议方法
protocol Computer: Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}


//协议扩展  --swift只允许扩展计算属性 不允许扩展存储属性 ，使用runtime或许可以
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
//Swift的数组和集合都符合一个名为Collection的协议，因此我们可以为该协议编写扩展
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
//调用
pythons.summarize()
beatles.summarize()

//面向协议编程---对声明的协议提供默认方法或数值

//声明一个Identifiable协议
protocol Identifiable {
    var id: String { get set }
    func identify()
}
//通过扩展Identifiable 提供默认值
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
//当我们创建一个符合Identifiable类型时，会自动获取identify()
struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()

