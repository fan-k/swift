import Cocoa

var greeting = "Hello, playground"
//结构体

//结构体和元组的区别：元组没有名字

struct Sport{
    var name :String
    var age :Int
    var isOlympicSport : Bool
    var olympicStatus :String{
        if isOlympicSport{
            return "\(name) is an Olympic sport"
        }
        else{
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", age:20,isOlympicSport: false)
print(chessBoxing.olympicStatus)


//didset  willset

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
        willSet{
            print("\(task) is next \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


//结构体的方法
struct City{
    var population: Int
    
    func collectTaxes() -> Int{
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()



//字符串 数组也是结构体
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)


//使用mutating 修改结构体的值
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()
