import UIKit

class Animal  {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func info() -> String {
        return "Animal name is \(self.name)"
    }
    
    // Copy Method to show the same behaviour of struct in class.
    func copy() -> Animal {
        let animal = Animal(name: "")
        animal.name = self.name
        return animal
    }
}

let dog1 = Animal.init(name: "Dog")
let dog2 = dog1.copy()

print(dog1.info())
dog1.name = "Cat"
print(dog2.info())


struct Vehicle {
    var name: String
    
    func info() -> String {
        return "Vehicle name is \(self.name)"
    }
}


var car1 = Vehicle.init(name: "Lamborghini")
let car2 = car1

print(car1.info())
car1.name = "Ferrari"
print(car2.info())
