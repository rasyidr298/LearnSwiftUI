//
//  Bicycle.swift
//  LearnSwiftUI
//
//  Created by admin on 26/8/21.
//

import Foundation

struct Bicycle : Identifiable {
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
