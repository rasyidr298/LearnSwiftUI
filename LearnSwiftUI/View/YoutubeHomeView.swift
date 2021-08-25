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
            Content()
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


struct Content : View {
    var body: some View{
        List{
            
            //Konten 1
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("img_onepiece2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:10")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20){
                    Image("img_rasyid")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        Text("One Piece Eps 200").font(.headline)
                        
                        HStack{
                            Text("Ini Adalah adalah onepiece eps 200 - 5000x ditonton 2jam yang lalu")
                                .font(.caption)
                        }
                    }
                    
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            
            //Konten 2
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("img_onepiece1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:10")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20){
                    Image("img_rasyid")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        Text("One Piece Eps 200").font(.headline)
                        
                        HStack{
                            Text("Ini Adalah adalah onepiece eps 200 - 5000x ditonton 2jam yang lalu")
                                .font(.caption)
                        }
                    }
                    
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            
            //Konten 3
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("img_onepiece1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:10")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20){
                    Image("img_rasyid")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        Text("One Piece Eps 200").font(.headline)
                        
                        HStack{
                            Text("Ini Adalah adalah onepiece eps 200 - 5000x ditonton 2jam yang lalu")
                                .font(.caption)
                        }
                    }
                    
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
        }
    }
    
}

