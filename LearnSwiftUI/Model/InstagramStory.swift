//
//  InstagramStory.swift
//  LearnSwiftUI
//
//  Created by admin on 26/8/21.
//

import Foundation

struct InstagramStory : Identifiable {
    let id : Int
    let imageUser : String
    let nameUser : String
    
    internal init(id: Int, imageUser: String, nameUser: String) {
        self.id = id
        self.imageUser = imageUser
        self.nameUser = nameUser
    }
}
