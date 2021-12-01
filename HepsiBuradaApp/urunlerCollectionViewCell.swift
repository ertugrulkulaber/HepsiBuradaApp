//
//  urunlerCollectionViewCell.swift
//  HepsiBuradaApp
//
//  Created by Ertuğrul Kulaber on 9.11.2021.
//

import UIKit

class urunlerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var urunİmage: UIImageView!
    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFitayLabel: UILabel!
    @IBAction func sepeteEkleButton(_ sender: Any) {
        print("Sepete Ekle Tıklandı")
    }
    
}
