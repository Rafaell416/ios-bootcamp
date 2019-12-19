
/*
 vehiculo motor
 ruedas
 */

enum TransmissionType {
    case mechanic
    case automatic
}

enum VehicleType {
    case gas
    case electric
}

struct Wheel {
    var brand: String
}

struct Motor {
    var cc: Int
}

protocol Vehicle {
    var type: VehicleType { get }
    var wheels: [Wheel] { get }
    var motor: Motor { get }
    var transmission: TransmissionType { get }
}


// Pulsar NS 160

struct Bike: Vehicle {
    let type: VehicleType
    let wheels: [Wheel]
    let motor: Motor
    let transmission: TransmissionType
}


let motorcc160 = Motor(cc: 160)
let michelinWheel = Wheel(brand: "Michelin")

let pulsarNS160 = Bike(type: .gas, wheels: [michelinWheel, michelinWheel], motor: motorcc160, transmission: .mechanic)
print(pulsarNS160)
