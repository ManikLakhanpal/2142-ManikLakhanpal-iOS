/*:
## Exercise - Class Memberwise Initializers and References

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. The base class `Spaceship` and subclasses `Fighter` and `ShieldedShip` have been provided for you below. You will use these to complete the exercises.
 */
class Spaceship {
    let name: String
    var health: Int
    var position: Int

    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }

    func moveLeft() {
        position -= 1
    }

    func moveRight() {
        position += 1
    }

    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

let falcon = Spaceship(name: "Falcon", health: 100, position: 0)

class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int

    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }

    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}

let destroyer = Fighter(name: "Destroyer", health: 80, position: 5, weapon: "Laser", remainingFirePower: 10)

class ShieldedShip: Fighter {
    var shieldStrength: Int

    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int, shieldStrength: Int) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
    }

    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}

let defender = ShieldedShip(name: "Defender", health: 120, position: 10, weapon: "Plasma", remainingFirePower: 15, shieldStrength: 25)


//:  Create a new constant named `sameShip` and set it equal to `falcon`. Print out the position of `sameShip` and `falcon`, then call `moveLeft()` on `sameShip` and print out the position of `sameShip` and `falcon` again. Did both positions change? Why? If both were structs instead of classes, would it be the same? Why or why not? Provide your answer in a comment or print statement below.

let sameShip = falcon
print("Falcon position: \(falcon.position), SameShip position: \(sameShip.position)")
sameShip.moveLeft()
print("After moving sameShip left -> Falcon position: \(falcon.position), SameShip position: \(sameShip.position)")

// Both positions change because `Spaceship` is a class, and classes are reference types.
// If `Spaceship` were a struct (value type), changing one would not affect the other.

/*:
 _Copyright © 2023 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 4 of 4
 */
