class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        print(description)
    }
    
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")


class Bicycle: Vehicle {
    var hasBasket = false
}


let someCycle = Bicycle()
print("Bike: \(someCycle.description)")

class Tandem: Bicycle {
    var currentNumberOfPassangers = 0
}

class Train: Vehicle {
    override func makeNoise() {
        print("Train ....")
    }
}

let tandem = Tandem()
tandem.makeNoise()

let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1

    override var description: String {
        super.description + " in gear \(gear)"
    }
}

let bugatti = Car()
bugatti.makeNoise()