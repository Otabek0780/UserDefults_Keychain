
import Foundation
import SwiftKeychainWrapper
//.....Observable Class......

class Defs_for_Pw: ObservableObject {
    
    //......Password.......
    
    @Published var pw: String {
        didSet {
            SwiftKeychainWrapper.KeychainWrapper.standard.set(pw, forKey: "password")
        }
    }
    init() {
        self.pw = SwiftKeychainWrapper.KeychainWrapper.standard.object(forKey: "password") as? String ?? "No Data"
    }
    
}
