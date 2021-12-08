//object oriented programming

//inheritance: superclass and subclasses; important for reusability for objects that have commonalities
//encapsulation: making sure what is declared in a class is not seen outside; important for security
//data abstraction: a class can do a lot of things but can call just a few things
//polymorphism: objects can act as multiple diff types of objects (made possible by inheritance)

//Struct/Class definition

//definition
struct Student {
    //instance stored properties
    let name: String //= "Sam"
    
    //field level initializer (default value)
    let age: Int //= 25
    
    //initializer (constructor)
    //once you define one initializer, need to define them all
    //emty default init
    init() {
        name = "Sam"
        age = 25
    }
    
    //initializer
    init(name: String, age: Int){
        //property is equal to value being passed in
        self.name = name
        self.age = age
    }
    
    //instance methods (belong to a class)
        //functions are found outside the class
    func walk() {
        print("\(name) is walking")
    }
}

//instantiate the object (initialize)
let sam = Student()
let jose = Student(name: "Jose", age: 12)

//access properties (use dot notation)
sam.age
jose.age
jose.name

//cannot do the following because cannot change property of const
//sam.age = 10

//dot notation can also invoke a method
sam.walk()

class Teacher {
    let name: String = "Jane"
    let age: Int = 24
    
    deinit {
        print("I'm about to be removed")
    }
}

let jane = Student()


//stored/compute properties

struct Rectangle {
    //stored
    var width: Double
    var height: Double
    
    //computed property: purely syntactic sugar (reads nicely)
    var area: Double {
        //getters and setters (see lines 91 & 92 of code)
        get {
            return width * height
        }
        set {
            //assuming is square
            width = newValue.squareRoot()
            height = newValue.squareRoot()
        }
    }
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
//    func getArea() -> Double {
//        return width * height
//    }
}

var rectangle = Rectangle(width: 20, height: 50)
//rectangle.getArea()
rectangle.area
rectangle.area = 100

//memberwise initializer - available to struct
struct Phone {
    let name: String
    let year: Int
}

let pixel = Phone(name: "Connie's iPhone 8", year: 2018)
pixel.name

//instance/type methods

//classes have inheritance and d initializer, structs do not

//reference type
var myAge = 20

func changeAge(age: inout Int) {
    //inout lets us change reference type
    age = 30
}

changeAge(age: &myAge)
myAge

//encapsulation

//access controls

//principal of least privelege (only need to show what you need)

//open - least restrictive (everything inside and outside can access; can subclass)
//public (everything inside and outside module can access; not sub class-able)
//internal (everything in module can access)
//fileprivate (everything in the .swift file can access it)
//private - most restrictive (only the class can access it)

//inheritance

//superclass is Person
//subclass is Employee
//final class Person (makes classes not able to be subclassable)
class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func talk() {
        print("I'm talking as a person")
    }
}

class Employee: Person {
    
    let employeeId: String = "1"
    
    override func talk() {
        print("I''m talking as an employee with id \(employeeId)")
    }
}

let bob = Employee(name: "Bob")
bob.talk()

//rand num
Int.random(in: 1..<100) //1-99
Int.random(in: 1...100) //1-100

Double.random (in: 1..<99)
