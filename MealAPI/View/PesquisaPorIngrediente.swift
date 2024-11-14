import SwiftUI

struct PesquisaPorIngrediente: View {
    @State var receitas: [Receita]?
    @State var ingrediente: String = ""
    
    var body: some View {
        VStack{
            Label("Digite um ingrediente: ", systemImage: "heart.fill")
                .font(.headline)
            
            TextField("Ingrediente: ", text: $ingrediente)
                .frame(width: 300)
                .padding()
                .cornerRadius(7)
                .textInputAutocapitalization(.never)

            Button("Pesquisar"){
                pesquisarIngrediente()
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.red)
            .cornerRadius(9)
            
            if let receitas = receitas{
                List(receitas, id: \.descricao){ ingrediente in
                    VStack(alignment: .leading){
                        Text("Descrição: \(ingrediente.descricao)")
                        Text("Quantidade: \(ingrediente.quantidade)")
                        Text("Calorias: \(ingrediente.calorias)")
                    }
                }
            }
            
        }//vstack
    }
    func pesquisarIngrediente(){
        APITheMealDB.pesquisarIngrediente(ingrediente) {
            (result: [Receita]) in
            self.receitas = result
        }
    }
}

#Preview {
    PesquisaPorIngrediente()
}
