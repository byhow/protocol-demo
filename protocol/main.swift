protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
}

class Eagle: Bird, CanFly {
    func soar() {
        print("The eagle glides in the air using air currents")
    }
    
    func fly() {
        print("The eagle flaps its wings")
    }
    
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObj: CanFly) {
        flyingObj.fly()
    }
    
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane use its engine to lift off into the sky")
    }
}

let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()
//
let myPenguin = Penguin()
//myPenguin.fly()

let myMuseum = FlyingMuseum()

let myPlane = Airplane()

myMuseum.flyingDemo(flyingObj: myEagle)
