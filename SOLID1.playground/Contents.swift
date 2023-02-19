import Foundation

//Single Responsbility  Principle

//before
class Handler{
    func handle(){
        let data = requestDataToAPI()
        
    }
    private func requestDataToAPI()- Data{
        
        // this sends APIN request and awaits the response
    }
    private func parse(data: Data) -> String{
        // this parses the data
    }
    private func saveToDB(array:[String]){
        
        // this saves the array to the DB
    }
    
    
}// well the class above has alot of responsbilities, Yet you may want to reference other classes /librariees while using it.




//after applying Single Responsbility Principle

class Handler{
    let apiHandler : APIHandler
    let parseHandler: ParseHandler
    let dbHandler : DBHandler
    
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, dbHandler: DBHandler){
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.dbHandler = dbHandler
    }
    
    func handle(){
    
    }
}

class APIHandler{
    
    func requestDataToAPI()- Data{
        
        // this sends APIN request and awaits the response
    }
    
}
class ParseHandler{
    
    func parse(data: Data) -> String{
        // this parses the data
    }
    
}

class DBHandler{
    
    func saveToDB(array:[String]){
        
        // this saves the array to the DB
    }
    
}
