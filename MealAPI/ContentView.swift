import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .pesquisaIngrediente
    
    enum Tab {
        case pesquisaIngrediente
    }
    
    var body: some View {
        TabView(selection: $selection){
            PesquisaPorIngrediente()
                .tabItem {
                    Label("INGREDIENTE", systemImage: "star")
                }
                .tag(Tab.pesquisaIngrediente)
        }
    }
}

#Preview {
    ContentView()
}
