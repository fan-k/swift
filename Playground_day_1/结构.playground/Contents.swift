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
