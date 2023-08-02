import Cocoa

var greeting = "Hello, playground"

// 初始化  init


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Student {
    var name :String
    
    //访问权限  private  public
    private  var id :Int
    
    //lazy 懒加载 仅在第一次访问时创建
    lazy  var familyTree = FamilyTree()
    
    
    init(name:String,id:Int) {
        self.name = name
        self.id = id
    }
}


var s1 = Student(name:"xiaoe",id:12134)
s1.name
