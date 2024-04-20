import Foundation

/*

 Objective: To demonstrate understanding of protocols and class implementation in Swift by creating a model for managing various features of a camping trailer.

 Instructions: You are tasked with creating a Swift program that models a camping trailer and its different systems using protocols and a class. The program should define protocols for managing the trailer's water system, electricity system, climate control, and entertainment system, each with specific properties and methods. Additionally, implement a class representing a camping trailer that conforms to these protocols.

 Requirements: Define any 2 of the 5 protocols, each protocol has:

 1 property related to the specific system.

 2 methods for managing or interacting with the system.

 Implement a class named Camper that conforms to any 2 of the 5 protocols.

 Ensure the class includes appropriate properties and methods to fulfill the requirements of each protocol.

 Protocols: (Define any 2 the following protocols)

 Trailer Property: brand (String) Methods: startEngine(), stopEngine()
 WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
 ElectricitySystem Property: batteryLevel (Double) Methods: chargeBattery(), checkBatteryLevel()
 ClimateControl Property: temperature (Double) Methods: setTemperature(_ temperature: Double), adjustFanSpeed()
 EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()
 Just like we did in class the Camper class that must conform to the protocols you have adopted.

 write test code to demonstrate the functionality of the Camper class
 */

protocol WaterSystem {
    func fillwaterTank ()
    func drainWater ()
    var waterCapacity: Double {get set}
}

protocol ElectricitySystem {
    func chargeBattery()
    func checkBatteryLevel()
    var batteryLevel : Double {get set}
}

class Camper : WaterSystem, ElectricitySystem {
    func drainWater() {
        
    }
    
    func checkBatteryLevel() {
        
    }
    
    var waterCapacity: Double = 150.0
    var batteryLevel: Double  = 100.0
    
    init(waterCapacity: Double = 150.0, batteryLevel: Double = 100.0) {
        self.waterCapacity = waterCapacity
        self.batteryLevel = batteryLevel
    }
    
    func fillwaterTank() {
        if waterCapacity > 150.0 {
            print("Tank is full")
        }else {
            print("Tank is drained")
        }
    }
    func chargeBattery() {
        if batteryLevel < 100 {
            print("battery is avarage")
        }  else {
            print("battery is full")
        }
        var C = Camper(waterCapacity: 150.0 , batteryLevel: 100.0)
        print("water capacity: \(C.waterCapacity)")
        
        var CA = Camper(waterCapacity: 150.0 , batteryLevel: 100.0)
        print("battery level: \(CA.batteryLevel)")
    }
}


    
    
    
    
    
    

