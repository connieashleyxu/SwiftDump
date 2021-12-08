import Foundation

//FUNCTIONS PT 2
var myFavoriteNumber = 5

//Inout parameters - change the val of var defined outside the func inside the func
//causes a side effect, so not recommended (but case by case)
//1. add inout before data type
func changeFavoriteNumber(number: inout Int){
    //all vars created in func parameters are created as CONST which usually cannot be changed
    number = 10;
}

//2. add & to before param input when executing
changeFavoriteNumber(number: &myFavoriteNumber)

print(myFavoriteNumber)

//swift infers return type is void if not specified -> Void

//variadic parameters - functiosn can take a var num of vars for ex. averages
func arithmeticMean (_ numbers: Double...) -> Double {
    var total: Double = 0

    for number in numbers {
        total += number
    }

    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)

//can define functions withn functions (nested functions; func inside can only  executed inside the func; used for encapsulation for privacy)

//STRINGS
let singleQuote = "This is a String."

//multiline string literals - use triple double quotes
//first line dictates where spacing begins
//space on every subsequent line is ignored
let quote = """
    "Quote line 1:
    This is a quote"."
        The spacing of the lines is based off of the first line
    """

print(quote)

//escaped special chars
let singleQuoteWithQuote = "This is a String.\"Quote can be used with backslash"

print(singleQuoteWithQuote)

// \0 (null char)
// \\ (backslash)
// \t (horiz tab)
// \n (newline)
// \" (double quote)
// \' (single quote)

//unicode \u{n} where n is a 1-8 digit hexadecimal number
//see where unicode maps to by googling unicode translations
let dollarSign = "\u{24}"
print(dollarSign)

//check to see if string is empty or not (white space counts)
" ".isEmpty
"".isEmpty

//value vs. reference type
//strings are value types
//value is cloned and copied over
func printName(name: String) {
    print(name)
}

let myName = "Connie"
//whatever happens to anotherName doesn't impact myName
var anotherName = myName

printName(name: myName)

//reference type doesn't copy entire val, but pointer
//may cause side effects

//concatenate strings
let string1 = "hello"
let string2 = " world"
var welcome = string1 + string2

var instructions = "look over the"
instructions += string2

//string append
//can only append to var, not let (bc let is CONST)
let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//string interpolation (use the \)
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//string indices
let name = "Connie"

//access first char using String.Index data, not int
name[name.startIndex] //first letter
name[name.index(before: name.endIndex)] //last letter - need to use index before or else go out of bounds

name[name.index(after: name.startIndex)] //after
name[name.index(name.startIndex, offsetBy: 1)] //offset

//use indeixes to access all indices char
for index in welcome.indices {
print("\(welcome[index]) "
, terminator: "")
}

//inserting
welcome.insert("!", at: welcome.endIndex) //end of index
welcome.insert(contentsOf: " Cool", at: welcome.index(before:
welcome.endIndex)) //anywhere in the middle of index

//removing
welcome.remove(at: welcome.index(before: welcome.endIndex))

//length of string
name.count

//change cases
let greeting = "Good Day"
print(greeting.lowercased()) //all lowercase

let warning = "Don't Panic"
print(warning.uppercased()) //all uppercase

//format string
//will add decimals + truncate where needed
let num = 42.2

print(String(format: "num %.2f", num))

//format specifiers
// %% (% char)
// %d, %D, %i (int)
// %u, %U (unsigned int)
// %f (float or double)
// %e (float in sci notation)
// %g *float in %e or %f)
//%@ (obj (ex. String))

//OPTIONALS
//help fix the null pointer exception
    // -> accessing a null value
//swift makes every const and var by default required to have a val

var myComputer = "Mac"
myComputer.isEmpty

//const or var has potential to be nil, it needs to be optional
let shortForm: String? //shorter version of definitng optionals
//default is nil

//how to declare optional type
var longForm: Optional<String>
//default is nil
longForm = "example"

//print(longForm) //prints out "Optional("example")

//how to access vals of optional

//1. force unwrapping (easiet, but more dangerous)
print(longForm!) //will crash if nothing is inside the optional
//sometimes important to use to catch errors early on

//2. implicitly unwrapped optionals (will crash app if nil)
let implicitForm: String! = "implicit"
//print(implicitForm)
//print(implicitForm)
//print(implicitForm)
//sometimes important to use to catch errors early on

//3. conditional (optional) binding (if statement - runs only if optional exists)
if let exists = longForm {
    print("this example works: \(exists)")
}

//4. optional chaining (use if ok for this line to be ignored)
//let cell = UITableViewCell()
//cell.textLabel?.text = "My awesome label"

//dinctionary
//acess val of dict, will always be optional
let imagePaths = ["star": "/glyphs/star.png",
"portrait": "/images/content/portrait.jpg",
"spacer": "/images/shared/spacer.gif"]

//nil coalenscing operator
print(longForm ?? "Pixel") //default to saying "Pixel" if nothing is inside
