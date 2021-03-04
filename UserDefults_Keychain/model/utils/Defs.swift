
import Foundation

//.....Observable Class......

class Defs: ObservableObject {
    
    //......Name........
    @Published var name: String {
        didSet{
            UserDefaults.standard.set(name, forKey: "name")
        }
    }
    init() {
        self.name = UserDefaults.standard.object(forKey: "name") as? String ?? "No Name"
        self.account = loadAccount()
         
    }
    //.....User......
    @Published var account: Account_Instance? {
        didSet{
            storeAccount(account: account ?? Account_Instance(holderName: "no", cardNumber: "no", accountBalance: "no", spendingLimit: "no"))
        }
    }
    
    func storeAccount(account: Account_Instance) {
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(account) {
            UserDefaults.standard.set(encodedUser, forKey: "account_1")
        }
    }
   
    func loadAccount() -> Account_Instance! {
        
        if let savedUserData = UserDefaults.standard.object(forKey: "account_1") as? Data {
            let decoder = JSONDecoder()
            
            if let savedUser = try? decoder.decode(Account_Instance.self, from: savedUserData){
                return savedUser
            }
        }
        return nil
    }
    
}
