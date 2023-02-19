import Foundation

//Open Closed Principle

//classes are open for extension and but closed for modification


//before
class Logger{
    func printData(){
        let cars = [
            Car(name: "Jeep", color "Gray"),
            Car(name: "Benz", color "White"),
            Car(name: "Lexus", color "Black")
        ]
        cars.forEach{car in
            print(car.printDetails())
            
        }// end of forEach
    }
    
}

class Car{
    let name : String
    let color : String
    
    init(name: String, color: String){
        self.name = name
        self.color = color
        
    }
    func printDetails() -> String{
        return "I am \(name) and my color is \(color)"
        
    }
    
}

//after

protocol Printable{
    
    func printDetails() -> String
}

class logger{
    
    let cars: [Printable] = [
    
        Car(name: "Jeep", color "Gray"),
        Car(name: "Benz", color "White"),
        Car(name: "Lexus", color "Black"),
        Bike(type: "BMX")
        Bike(type: "Tandem")
    
    ]
    
    cars.forEach{
        
        print(cars.printDetails())
    }
        
}


class Car: Printable {
    let name: String
    let color: String

    init(name: String, color: String) {
        self.name = name
        self.color = color
    }

    func printDetails() -> String {
        return "I'm \(name) and my color is \(color)"
    }
}
 
class Bike : Printable{
    
    let type : String
    
    init(type: String){
        self.type = type
    }
    func printDetails() -> String{
        
        return "I am \(type)"
    }
    
}

// above we created a protocol that can be inherited by the classes without needing alot of modification


