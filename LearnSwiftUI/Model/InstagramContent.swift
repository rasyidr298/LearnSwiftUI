//
//  InstagramContent.swift
//  LearnSwiftUI
//
//  Created by admin on 26/8/21.
//

import Foundation

struct InstagramContent : Identifiable {
    let id : Int
    let imageUser : String
    let nameUser : String
    let imageContent : String
    let likedBy : String
    let likedOther : String
    let favoriteContent : Bool
    
    internal init(id: Int, imageUser: String, nameUser: String, imageContent: String, likedBy: String, likedOther: String, favoriteContent: Bool) {
        self.id = id
        self.imageUser = imageUser
        self.nameUser = nameUser
        self.imageContent = imageContent
        self.likedBy = likedBy
        self.likedOther = likedOther
        self.favoriteContent = favoriteContent
    }

}
