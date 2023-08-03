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
