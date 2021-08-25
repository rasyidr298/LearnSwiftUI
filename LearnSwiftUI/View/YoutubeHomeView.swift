//
//  YoutubeHomeView.swift
//  LearnSwiftUI
//
//  Created by admin on 25/8/21.
//

import SwiftUI

struct YoutubeHomeView: View {
    var body: some View {
        Home()
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
            Text("Heloo ini Content")
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
                )
        }
    }
}
