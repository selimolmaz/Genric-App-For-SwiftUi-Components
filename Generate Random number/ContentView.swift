import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Page1()) {
                    Text("Rasgele Sayı Üret")
                }
                
                NavigationLink(destination: Page2()) {
                    Text("V, H Stackler")
                }
                NavigationLink(destination: Page3()) {
                    Text("Card Game")
                }
            }
            .navigationTitle("Aktiviteler")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
