import SwiftUI

struct ContentView: View {
    @State var isShowing = false
    var body: some View{
        Text("hello")
            .onTapGesture {
                self.isShowing.toggle()
            }
            .sideMenu(isShowing: $isShowing) {
                Text("menu")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.red)
            }
            .onChange(of: isShowing) {
                print($0)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

