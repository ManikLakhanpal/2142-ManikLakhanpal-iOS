// struct Car {
//     var make: String
//     var year: Int
//     var color: String

//     func startEngine() {
//         print("Starting your engine")
//     }

//     func drive() {
//         print("Driving")
//     }

//     func park() {
//         print("Park")
//     }

//     func steer(direction: Direction) {

//     }
// }

// let firstCar = Car(name: "Honda", year: 2010, color: "blue")
// let secondCar = Car(name: "Honda", year: 2010, color: "blue")

// struct Temp {
//     private var temp: Double

//     init(cel: Double) {
//         temp = cel
//     }

//     init(fer: Double) {
//         temp = fer + 32
//     }

//     func printTemp() {
//         print(temp)
//     }
// }

// var t = Temp(fer: 2)

// t.printTemp()

// struct Size {
//     var width: Double
//     var height: Double

//     func area() -> String {
//         return "Area: \(width * height)"
//     }

//     func data() {
//         print("\nWidth: \(width)\nHeight: \(height)")
//     }

// }

// var some = Size(width: 10, height: 2)
// print(some.area())
// some.data()

struct Car {
    private var odoMeter: Int
    var speed: Double {
        didSet {
            if speed == oldValue {
                print("Speed is same")
            }
            else if speed < oldValue {
                print("speed was decreased")
            }
            else {
                print("speed was increased")
            }
        }
    }
    
    var speedInMiles: Double {
        speed * 0.62
    }

    init(odoMeter: Int, speedInKm: Double) {
        self.odoMeter = odoMeter
        self.speed = speedInKm
    }

    func printCarStatus() {
        print("The car speed: \(speed)\n")
    }

    mutating func speedUp() {
        speed += 1;
    }

    mutating func speedDown() {
        speed -= 1;
    }

    mutating func odometerUp() {
        odoMeter += 1;
        print("Odometer up by \(odoMeter)\n")
    }

    func printSpeedInMiles() {
        print("Speed in miles is \(speedInMiles)")
    }
}

var bugatti = Car(odoMeter: 1000, speedInKm: 450)

// * The below is for pointers
withUnsafePointer(to: &bugatti) {ptr in 
    print("The pointer is \(ptr)")
}

bugatti.printCarStatus()
bugatti.speedUp()
bugatti.speedDown()
bugatti.odometerUp()
bugatti.printSpeedInMiles()