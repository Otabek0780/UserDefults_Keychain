
import Foundation


//class Account: ObservableObject {
//    //......Name........
//    @Published var name: String {
//        didSet{
//            UserDefaults.standard.set(name, forKey: "name_1")
//        }
//    }
//    
//    init() {
//        self.name = UserDefaults.standard.object(forKey: "name") as? String ?? "No Name"
//        self.account = loadAccout()
//    }
//    
//    @Published var account: String?{
//        didSet{
//            storeAccount(account: account ?? Account_Instance(holderName: "No Data", cardNumber: "No Data", accountBalance: "No Data", spendingLimit: "No Data"))
//        }
//    }
//    func storeAccount(account: Account_Instance) {
//        let encoder = JSONEncoder()
//        if let encodedUser = try? encoder.encode(account) {
//            UserDefaults.standard.set(encodedUser, forKey: "account_1")
//        }
//    }
//   
//    func loadAccout() -> Account_Instance! {
//        
//        if let savedUserData = UserDefaults.standard.object(forKey: "account_1") as? Data {
//            let decoder = JSONDecoder()
//            
//            if let savedUser = try? decoder.decode(Account_Instance.self, from: savedUserData){
//                return savedUser
//            }
//        }
//        return nil
//    }
//}
