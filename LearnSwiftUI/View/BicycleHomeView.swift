//
//  BicycleHomeView.swift
//  LearnSwiftUI
//
//  Created by admin on 25/8/21.
//

import SwiftUI

struct BicycleHomeView: View {
    
    //    @State var chartCount: Int = 0
    @ObservedObject var chartCountGLobal = GLobalObject()
    
    //new data
    let data: [Bicycle] = [
        Bicycle(id: 1, namaProduct: "Polygon Putih", fotoProduct: "img_bicycle", hargaProduct: "200.0000", lokasi: "Yogyakarta", ratingCount: 3, jumlahRating: 56),
        Bicycle(id: 2, namaProduct: "Polygon Merah", fotoProduct: "img_bicycle", hargaProduct: "400.0000", lokasi: "Kebumen", ratingCount: 4, jumlahRating: 56),
        Bicycle(id: 3, namaProduct: "Polygon Hitam", fotoProduct: "img_bicycle", hargaProduct: "300.0000", lokasi: "Jakarta", ratingCount: 5, jumlahRating: 56)
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(data){row in
                    VStack(spacing:10){
                        Product(data: row, chartCount: chartCountGLobal)
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
                    ChartView(chartCountGLobal: self.chartCountGLobal)
                }
            )
        }
        .accentColor(Color.gray)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    struct ChartView : View {
        //        @Binding var chartCount: Int
        @ObservedObject var chartCountGLobal: GLobalObject
        
        var body: some View{
            ZStack{
                Button(action: {print("click button ")}, label: {
                    NavigationLink(destination : DetailChart(chartCountGLobal: chartCountGLobal)){
                        Image(systemName: "cart.fill")
                    }
                })
                
                Text("\(self.chartCountGLobal.chartCount)")
                    .foregroundColor(Color.white)
                    .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.body)
                    .padding(5)
                    .background(Color.red)
                    .clipShape(Circle())
                    .offset(x: 10, y: -10)
                
            }
        }
    }
    
    struct DetailChart : View {
        @ObservedObject var chartCountGLobal: GLobalObject
        
        var body: some View{
            NavigationView{
                Text("Detail Chart")
                .navigationBarTitle("Bicycle")
                .navigationBarItems(
                    trailing: HStack(){
                        Button(action: {print("click button ")}, label: {
                            Image(systemName: "person.fill")
                        })
                        
                        ChartView(chartCountGLobal : chartCountGLobal)
                    }
                )
            }
            .accentColor(Color.gray)
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
    struct Product : View {
        
        let data: Bicycle
        //@Binding var chartCountIndex: Int
        @ObservedObject var chartCount: GLobalObject
        
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
                
                Button(action: {print(self.chartCount.chartCount += 1)}, label: {
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

struct BicycleHomeView_Previews: PreviewProvider {
    static var previews: some View {
        BicycleHomeView()
    }
}
