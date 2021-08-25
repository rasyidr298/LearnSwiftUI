//
//  BicycleHomeView.swift
//  LearnSwiftUI
//
//  Created by admin on 25/8/21.
//

import SwiftUI

struct ProductModel : Identifiable {
    let id: Int
    let namaProduct: String
    let fotoProduct: String
    let hargaProduct: String
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id: Int, namaProduct: String, fotoProduct: String, hargaProduct: String, lokasi: String, ratingCount: Int, jumlahRating: Int){
        
        self.id = id
        self.namaProduct = namaProduct
        self.fotoProduct = fotoProduct
        self.hargaProduct = hargaProduct
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
    }
}

struct BicycleHomeView: View {
    
    //new data
    let data: [ProductModel] = [
        ProductModel(id: 1, namaProduct: "Polygon Putih", fotoProduct: "img_bicycle", hargaProduct: "200.0000", lokasi: "Yogyakarta", ratingCount: 3, jumlahRating: 56),
        ProductModel(id: 2, namaProduct: "Polygon Merah", fotoProduct: "img_bicycle", hargaProduct: "400.0000", lokasi: "Kebumen", ratingCount: 4, jumlahRating: 56),
        ProductModel(id: 3, namaProduct: "Polygon Hitam", fotoProduct: "img_bicycle", hargaProduct: "300.0000", lokasi: "Jakarta", ratingCount: 5, jumlahRating: 56)
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(data){row in
                    VStack(spacing:10){
                        Product(data: row)
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Bicycle")
            .navigationBarItems(
                trailing: HStack(){
                    Button(action: {print("click button ")}, label: {
                        Image(systemName: "person.fill")
                    })
                    Button(action: {print("click button ")}, label: {
                        Image(systemName: "cart.fill")
                    })
                }
            )
        }
        .accentColor(Color.gray)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    struct BicycleHomeView_Previews: PreviewProvider {
        static var previews: some View {
            BicycleHomeView()
        }
    }
    
    
    struct Product : View {
        
        let data: ProductModel
        
        var body: some View{
            VStack(alignment: .leading){
                ZStack(alignment: .topTrailing){
                    
                    Image(self.data.fotoProduct)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                    
                    Button(action: {print("favorite click")}, label: {
                        Image(systemName: "heart")
                            .foregroundColor(Color.red)
                            .padding()
                    })
                }
                
                Text(self.data.namaProduct).font(.title)
                    .bold()
                    .padding(.leading)
                    .padding(.trailing)
                
                Text("Rp. \(self.data.hargaProduct)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(Color.red)
                    .padding(.trailing)
                    .padding(.leading)
                
                HStack{
                    Image(systemName: "mappin.circle")
                    Text(self.data.lokasi)
                }
                .padding(.leading)
                .padding(.top, 5)
                
                HStack{
                    ForEach(0..<self.data.ratingCount){
                        items in
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    }
                }
                .padding(.leading)
                
                Button(action: {print("click button add chart")}, label: {
                    Spacer()
                    HStack{
                        Image(systemName: "cart")
                        Text("Add Chart").font(.callout).padding()
                    }
                    Spacer()
                })
                .foregroundColor(Color.white)
                .background(Color.green)
                .cornerRadius(10)
                .padding()
            }
            .background(Color("gray"))
            .cornerRadius(15)
        }
    }
}
