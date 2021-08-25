//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by admin on 24/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 30){
                Logo()
                FormBox()
            }
            .padding(.all, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct Logo : View {
    var body: some View{
        
        VStack{
            Image("swift")
                .resizable()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .background(Color("blue"))
                .foregroundColor(Color.white)
                .padding()
                .background(Color("blue"))
                .cornerRadius(20)
            
            Text("Hello SwiftUI")
                .foregroundColor(Color.white)
        }
        
    }
}

struct FormBox : View{
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View{
        VStack(alignment:.leading){
            
//            tf username
            Text("username").font(.callout).bold()
            TextField("username..", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
//            tf password
            Text("password").font(.callout).bold()
            SecureField("password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
//            btn
            Button(action: {print("Hello World")}, label: {
                HStack{
                    Text("Sign In")
                    Spacer()
                }
            })
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        .padding(.all, 30)
            .background(Color.orange)
            .cornerRadius(10)
    }
}



