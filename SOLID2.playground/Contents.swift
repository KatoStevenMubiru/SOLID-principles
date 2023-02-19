import Foundation

//Open Closed Principle

//classes are open for extension and but closed for modification


//before
class Logger{
    func printData(){
        let cars = [
            Car(name: "Jeep", color "Gray")
            Car(name: "Benz", color "White")
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


