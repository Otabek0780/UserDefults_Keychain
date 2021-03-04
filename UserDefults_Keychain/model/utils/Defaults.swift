
import Foundation

//......Custom Class......
struct Defaults {
    static let defaults = UserDefaults.standard
    //.....Data.....
    static func storeData(data: String) {
        defaults.set(data, forKey: "data_1")
    }
    
    static func loadName() -> String {
        defaults.object(forKey: "data_1") as? String ?? "No Data"
    }
    //......User....
    static func storeUser(user: User) {
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(user) {
            defaults.set(encodedUser, forKey: "user")
        }
    }
   
    static func loadUser() -> User! {
        
        if let savedUserData = defaults.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            
            if let savedUser = try? decoder.decode(User.self, from: savedUserData){
                return savedUser
            }
        }
        return nil
    }
}
