// struct Person {
//     var name: String
//     var me: String

//     func printName() {
//         print("My name is \(name)")
//     }
// }

// let me = Person(name: "Manik")

// me.printName()


let temp = 76

switch temp {
case 65...75:
    print("Temperature is ok")

case 0...65:
    print("Temperature is cold")

default:
    print("Temperature is hot")
}