//
//  Urunler.swift
//  HepsiBuradaApp
//
//  Created by Ertuğrul Kulaber on 9.11.2021.
//

import Foundation
class Urunler {
    var urunId:Int?
    var urunAd:String?
    var urunFiyat:Double?
    var urunResimAd:String?
    init(){
        
    }
    init(urunId:Int,urunAd:String,urunResimAd:String,urunFiyat:Double){
        self.urunId = urunId
        self.urunAd = urunAd
        self.urunFiyat = urunFiyat
        self.urunResimAd = urunResimAd
    }
}
