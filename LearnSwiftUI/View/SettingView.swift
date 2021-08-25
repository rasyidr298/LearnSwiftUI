//
//  SettingView.swift
//  LearnSwiftUI
//
//  Created by admin on 25/8/21.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView{
            Form{
                //Section image profile
                Section(){
                    NavigationLink(destination: About()){
                        HStack{
                            Image("img_rasyid")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(Circle())
                            
                            //name and status
                            VStack{
                                Text("Rasyid Ridla").font(.headline)
                                Text("Tekh Enthusiast").font(.caption)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                }
                
                //Section Pengaturan Umum
                Section(header: Text("Pengaturan Umum")){
                    
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Pesan Berbintang")
                    }
                    
            
                    HStack(spacing: 20){
                        Image(systemName: "tv")
                            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Whatapps Web/Desktop")
                    }
                }
                
                //Section Pengaturan Chat
                Section(header: Text("Pengaturan Chat")){
                    
                    HStack(spacing: 20){
                        Image(systemName: "person")
                            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Akun")
                    }
                    
            
                    HStack(spacing: 20){
                        Image(systemName: "phone.circle")
                            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Chat")
                    }
                }
                
            }.navigationTitle("Setting")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}


struct About : View {
    var body: some View{
        Text("Halaman About")
    }
}
