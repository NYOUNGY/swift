import UIKit
import Darwin

//Class Definition
class Circle {
    var radius: Double
    var pi: Double = 3.1415926535

    //Property Initialization
    init(a: Double) {
        radius = a
    }

    func area() -> Double{
        return radius * radius * pi
    }
}

//Object Definition
var mycircle = Circle.init(a: 2123)

//testing function
print(mycircle.area())



//enum
enum AppleOS {
    case macOS
    case iOS
    case WatchOS
    case tvOS
}

var osType: AppleOS = .macOS
print(osType)



//Struct Definition
struct UserName {
    var firstName: String
    var lastName: String
    
    //Initialization
    init(a: String){
        let array = a.components(separatedBy: " ")
        firstName = array[1]
        lastName  = array[0]
    }
    
    //getter & setter
    var name: String {
        
        get {
            return "\(firstName)-\(lastName)"
        }
        
        set {
            let array = newValue.components(separatedBy: " ")
            firstName = array[1]
            lastName  = array[0]
        }
        
    }
}


//testing struct
var userName = UserName(a: "YOON NYOUNG")
print(userName.name)
userName.name = "LEE NYOUNG"
print(userName.name)
