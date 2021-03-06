//
//  YoutubeHomeView.swift
//  LearnSwiftUI
//
//  Created by admin on 25/8/21.
//

import SwiftUI

struct YoutubeHomeView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Inbox")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Collection")
                    }
            }.accentColor(.red)
        }
    }
}

struct YoutubeHomeView_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeHomeView()
    }
}

struct Home : View {
    var body: some View{
        NavigationView{
            Beranda()
                .navigationBarItems(
                    leading:
                        HStack{
                            Button(action: {print("Hello Button")}, label: {
                                Image("ic_youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            })
                        },
                    
                    trailing:
                        HStack(spacing: 20){
                            Button(action: {print("Hello Button")}, label: {
                                Image(systemName: "tray.full")
                                    .foregroundColor(Color.secondary)
                            })
                            Button(action: {print("Hello Button")}, label: {
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.secondary)
                            })
                            Button(action: {print("Hello Button")}, label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.secondary)
                            })
                            Button(action: {print("Hello Button")}, label: {
                                Image("img_rasyid")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipShape(Circle())
                            })
                            
                        }
                ).navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct Beranda : View {
    var body: some View{
        List{
            CellContent(imageContent: "img_onepiece1", profileContent: "img_rasyid", judul: "Onepice eps 200", deskripsi: "ini adalah onepiece eps 200 - 3000x ditonton 3 jam yang lalu", durasi: "10:10")
            
            CellContent(imageContent: "img_onepiece2", profileContent: "img_rasyid", judul: "Onepice eps 200", deskripsi: "ini adalah onepiece eps 200 - 3000x ditonton 3 jam yang lalu", durasi: "10:10")
            
            CellContent(imageContent: "img_onepiece1", profileContent: "img_rasyid", judul: "Onepice eps 200", deskripsi: "ini adalah onepiece eps 200 - 3000x ditonton 3 jam yang lalu", durasi: "10:10")
        }
    }
}

//Komponen untuk cell
struct CellContent : View {
    
    var imageContent: String
    var profileContent: String
    var judul: String
    var deskripsi: String
    var durasi: String
    
    var body: some View{
        //Konten 1
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(durasi)
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing: 20){
                Image(profileContent)
                    .resizable()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(judul).font(.headline)
                    
                    HStack{
                        Text(deskripsi)
                            .font(.caption)
                    }
                }
                
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
    
}
