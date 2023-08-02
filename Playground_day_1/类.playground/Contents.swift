import Cocoa

var greeting = "Hello, playground"

//类

//类与结构体的区别
//类必须创建初始化
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    func makeNoise() {
        print("Woof!")
    }
    
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

//类可以继承
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//类的方法重写
class PoodleA: Dog {
    override func makeNoise() {
        print("Yip!")
    }
}

//final 关键字 限制类被继承或重写  可以在class、func和var前修饰
final class PoodleB {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    final func makeNoise() {
        print("Woof!")
    }
}

//类的copy 指向公共的内存数据
var singer = Poodle(name:"a")
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"


//类可以销毁
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    //销毁
    deinit {
        print("\(name) is no more!")
    }
}



//类的成员变量可以更改 结构体不能（非要改可以使用 mutating）
class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)
