//9/1/21
//CONTROW FLOW

//Code Tips
//Use camelCase
//Don't need semi-colons (optional)
//cmd + forward slash = quickly comment out code
//DRY: Don't Repeat Yourself (don't copy and paste code -- put it in a function)

//Data Types

//Char
//includes emojis 😀
"A"

//String
"this is a string"

//Int
-1
0
1

//Double/Float
12.3

//Bool
true
false

//Const: cannot change value
let myFavoriteNumber: Int = 100
//cannot do this:
//myFavoriteNumber = 200

//Var
var money: Int = 100
money = 200

//Type Inference: assume data type
//Click "option" and click on var name to affirm the data type
let name = "Connie"

//Assume a decimal number is a Double
let b = 24.5

//Double takes twice as much space as a float
//more space means more precision

//If want to be a Float, need to explicitly type Float
let a: Float = 24.5

//Injecting something into a sentence
let computer = "Macbook"

//Concatenate
let sentence = "My favorite computer is a..."
    + computer

//String Interpolation
let sentence1 = "My favorite computer is a \(computer)"
//the interpolation doesn't have to be a variable; can be any data type

//Operators & Operands
//Operators: +, -, *, /
//Operand: the numbers being manipulated
//expression: operators & operand

14/5
//14/2 = 2


14/5.0
//14/5.0 - 2.8

//mod operator
//helps with fidning odd/even

//String interpolation

//Control Flow
//Boolean Values & Operators
//Every boolean expresion needs to be true for entire expression to be ture
true
false

//Boolean Expression
1 > 5
//false

//Logical Operations: combined with boolean expresions
// AND &&: both must e ture
// OR ||: only one has to be true
// NOT !
!true
!false

myFavoriteNumber > 5 && myFavoriteNumber < 10
//false

//Branching
//if statement: if value is true, follow block of code
if true {
    print("I'm in!")
}

if myFavoriteNumber < 10 {
    print("I'm in")
}
else if (myFavoriteNumber > 9) {
    print("I'm in 2")
}
else {
    print("I'm in 3")
}

//Switch Statement
//switch case needs to exhaustive: compared to every single value in the data type
switch myFavoriteNumber {
    //range check (anything from 0-10) (inclusive)
    case 0...10:
        print("My fav num is 0")
        //execute the case after even if it doesn't match
        fallthrough
    //check if it's equal to 11 or 14
    case 11, 14:
            print("My fav num is 1")
    //range check (anything from 12-14) (not inclusive for the latter)
    case 12..<15:
            print("My fav num is 2")
        
    //solves the exhaustive problem
    default:
        print("My fav num is \(myFavoriteNumber)")
}

//Loop
//For Loop: execute a piece of code for a finite amount of times
// for (const) in (range) {//code to execute}
var number = 11;
for number in 0...10 {
    print("the number is \(number)")
}

var i=0
//i++ does not exist
i += 1

//step - called stride - (count up by 2)
for i in stride (from: 0, to: 10, by: 2) {
    print("the number is \(i)")
}
for i in stride (from: 0, to: 10, by: -2) {
    print("the number is \(i)")
}

//While Loop: execute a piece of code as long as a condition is true
var count = 0

while count < 5 {
    print("count is \(count)")
    count += 1
}

//FUNCTIONS: wraps a piece of code for you to execute multiple times
//stage 1: define - what the func does
//func (nameofFunc)() {//function to execute}
func printName() {
    let firstName = "Connie"
    let lastName = "Xu"

    print("Hey, my name is \(firstName) \(lastName)")
}


//functions with parameters; need to define the data type
let firstNameArg = "Cone"
let lastNameArg = "Xu!"

//arg label
func printNameWithParam(withFirst firstName: String, andLast lastName: String) {
    print("Hey, my name is \(firstName) \(lastName)")
}
//omit arg label
func printNameWithParam(_ firstName: String, _ lastName: String) {
    print("Hey, my name is \(firstName) \(lastName)")
}
//default arg label
func printNameWithParam(firstName: String, lastName: String) {
    print("Hey, my name is \(firstName) \(lastName)")
}

//stage 2: exectue - use the function
//can exectue multiple times
printName()
printName()
printName()
//call a func with parameter (with arg label & without)
printNameWithParam(withFirst: firstNameArg, andLast: lastNameArg);
printNameWithParam(withFirst: "CONNIE", andLast: "XU");

func sum (x: Int, y: Int) -> Int {
    return x + y
}

sum(x: 10, y: 20)

//returns: specify reutn data type
func divide(numerator: Double, denominator: Double) -> Double {
    return numerator/denominator
}

divide(numerator: 10.0, denominator: 20.0)

//tuple: return multiple values
func getHttpStatusCode() -> (Int, String) {
    //return (value1, value2, value 3, ...)
    return (200, "Ok")
}

//gets value back from tuple
let result = getHttpStatusCode();
//first return
result.0
//second return
result.1
