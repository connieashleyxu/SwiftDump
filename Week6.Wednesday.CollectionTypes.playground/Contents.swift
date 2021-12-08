import UIKit

//COLLECTIONS
//data types: for given unit of data, how do we categorize them

//collection types: if we have pieces of info, how do we group them together into a collection
    //1. array: ordered collection of vals
    //2. set: unordered of unique vals
    //3. dictionary: uordered of key vals

//THINGS YOU CAN DO WITH COLLECTIONS
//1. enumerating can go through elements in collections
//2. determine whether element is in collection
//3. access individual element in collection

//be clear about type values in collections

//collections can be mutable (var; can change it; add/remove elemeents) OR immutable (let; cannot change; once made cannot add/remove)

//ARRAY
//ordered sequence of items
//1. create an array
    //generic type: a type that works with other data types (another ex. optional)
    //let name: Optional<String> = "Connie"
    //var name: String? = "Connie"
    //print(name)
//full explicit way to create an array
let names: Array<String> = ["Mark", "Tiffany", "Andrew"]

//shorthand: [] does the same thing as the Array<>
let numbers: [Int] = [0, 2, 1]
//type inferenceL can infer types
var iPhones = ["iPhone SE", "iPhone 13"]

//creating an empty array
var emptyArray = [Int]()

//creating an array with default val
var threeDoubles = Array(repeating: 0.0, count: 3)

//2. access data from arrays using subscript notation
names[1]
//comoputes to see if array is empty
names.isEmpty
//computes to see how many elements are in the arrat
names.count
//if element is inside array
names.contains("Connie")
names.contains("Marks")

//3. modifying an array (add/remove)
    //make sure it's not immutable (not let; if want to mutate, should be var)
iPhones.append("iPhone 12")
iPhones.insert("iPhone X", at: 1)
iPhones.remove(at: 2)
iPhones

//4. Enumeration: going through each element in an array
for n in names {
    //can't change n
    print("The name is \(n)")
}

//change all items in array using map function
let capitalizedIPhones = iPhones.map {
    iPhone in
        return iPhone.uppercased()
}

//DICTIONARY
//keys (typically Strings) that point to a specific values; no defined order
//const lookup time

//1. creating a dictionary
//full explicit
//Dictionary<keyDataType, valueDataType>
var buildings: Dictionary<String, String> = [
    "THH": "Taper Hall", //don't forget the comma (,)
    "TCC": "Tutor Campus Center",
    "KAP": "Kaprielian Hall"
]

//shorthand
let buildingsShorthand: [String: String] = [
    "THH": "Taper Hall", //don't forget the comma (,)
    "TCC": "Tutor Campus Center",
    "KAP": "Kaprielian Hall"
]
//type inference
let buildingsTypeInference = [
    "THH": "Taper Hall", //don't forget the comma (,)
    "TCC": "Tutor Campus Center",
    "KAP": "Kaprielian Hall"
]

//2. accessin vals in a dictionary
//subscript notation
buildings["THH"]
//num of key/val pairs
buildings.count
//if dictionary is empty
buildings.isEmpty

print(buildings["THH"] ?? "Default Value") //if THH value doesnt exist, use default value

//Optional("Taper Hall") because can pass in anything (if not in the dictionary, will return nil
print(buildings["THH"]!) //add the (!) to force unwrap


//3. modification (add/remove)

//add new key value pair
buildings["JFF"] = "Jill and Frank Fertitta Hall"
print(buildings)

//remove key value pair
buildings["THH"] = nil
print(buildings)

//setting; override
buildings["JFF"] = "Fertitta Hall"

//methods
//update value: updateValue(_:forKey:)
//remove value: removeValue

//4. Enumeration: going through each element in dictionary
for (key, value) in buildings {
    print("key \(key) value \(value)")
}

//access only keys or values: .keys or .values
//can put it into an array to sort it
let keys = Array(buildings.keys)

//SET
//promises uniqueness; no defined ordering
//need to write Set
var favGenres: Set = ["Rock", "Country", "Rap"]

//SAME SITUATION AS OTHER COLLECTION TYPES
//count
//insert(_:)
//remove(_:)
//isEmpty
//for _ in _
//contains(_:)
