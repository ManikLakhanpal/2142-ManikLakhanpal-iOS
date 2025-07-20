/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let mixedCollection: [Any] = [
    42,                   // Int
    3.14,                 // Double
    "Hello, world!",      // String
    true,                 // Bool
    100,                  // Int
    false,                // Bool
    2.718,                // Double
    "Swift"               // String
]

for item in mixedCollection {
    print(item)
}

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in mixedCollection {
    print("The \(type(of: item)) has a value of \(item)")
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let info: [String: Any] = [
    "age": 25,                  // Int
    "height": 5.9,              // Double
    "name": "Manik",            // String
    "isStudent": true,          // Bool
    "score": 89.5,              // Double
    "graduated": false          // Bool
]

for (key, value) in info {
    print("\(key): \(value)")
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0.0

for (_, value) in info {
    switch value {
    case let intValue as Int:
        total += Double(intValue)
    case let doubleValue as Double:
        total += doubleValue
    case is String:
        total += 1
    case let boolValue as Bool:
        total += boolValue ? 2 : -3
    default:
        break
    }
}

print("Total: \(total)")

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, value) in info {
    switch value {
    case let intValue as Int:
        total2 += Double(intValue)
    case let doubleValue as Double:
        total2 += doubleValue
    case is String:
        total2 += 1
    case let boolValue as Bool:
        total2 += boolValue ? 2 : -3
    default:
        break
    }
}

print("Total: \(total2)")

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
