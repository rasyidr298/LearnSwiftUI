//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by admin on 24/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HandView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


struct HandView : View {
    var body: some View{
        Image(systemName: "hand.raised")
            .resizable()
            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .background(Color("blue"))
            .foregroundColor(Color.white)
            .padding()
            .background(Color("blue"))
            .cornerRadius(20)
}
}
