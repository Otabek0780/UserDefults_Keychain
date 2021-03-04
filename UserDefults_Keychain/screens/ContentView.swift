import SwiftUI

struct ContentView: View {
    
    @ObservedObject var defs_pw = Defs_for_Pw()
    
    init() {
        print(defs_pw)
        defs_pw.pw = "12200321"
        print(defs_pw)
    }

    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all)

            ZStack(alignment: .leading) {
                
                Image(systemName: "applelogo")
                    .foregroundColor(.white)
                    .padding(.leading, 25)
                
                Text(defs_pw.pw)
                    .foregroundColor(.white)
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 2)
                                    .background(Color.clear))
                    .padding(.trailing)
                    .padding(.leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
