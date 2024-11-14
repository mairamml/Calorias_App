import Foundation
class APITheMealDB{
    class func pesquisarIngrediente(_ ingrediente: String, completion: @escaping ([InfoCalorias]) -> Void){
        guard let url = URL(string: "https://caloriasporalimentoapi.herokuapp.com/api/calorias/?descricao=\(ingrediente)") else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error ) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {return}
                if response.statusCode == 200{
                    guard let data = data else {return}
                    do{
                        let meals = try JSONDecoder().decode([InfoCalorias].self, from: data)
                        DispatchQueue.main.async {
                            completion(meals)
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
                else {
                    print("Status inválido do servidor, Status Code: \(response.statusCode)")
                }
                
            }else{
                print(error!.localizedDescription)
            }
        }.resume()
    }
}
