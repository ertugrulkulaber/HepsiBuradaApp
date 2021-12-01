//
//  ViewController.swift
//  HepsiBuradaApp
//
//  Created by Ertuğrul Kulaber on 9.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var urunCollectionView: UICollectionView!
    var urunlerListe = [Urunler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let u1 = Urunler(urunId: 1, urunAd: "Apple Watch Seri 6 44mm GPS Gold Alüminyum Kasa ve Kum Pembesi Spor Kordon M00E3TU/A", urunResimAd: "apple1", urunFiyat: 1.245)
        let u2 = Urunler(urunId: 2, urunAd: "Apple AirPods 2. Nesil Kulaklık MV7N2TU/A (Apple Türkiye Garantili)", urunResimAd: "kulaklik", urunFiyat: 1.053)
        let u3 = Urunler(urunId: 3, urunAd: "Apple MacBook Air M1 Çip 8GB 512GB SSD macOS 13  QHD Taşınabilir Bilgisayar Altın MGNE3TU/A", urunResimAd: "macbook", urunFiyat: 8.799)
        let u4 = Urunler(urunId: 4, urunAd: "iPhone 13 Pro Max 256 GB", urunResimAd: "iphone13", urunFiyat: 7.399)
        let u5 = Urunler(urunId: 5, urunAd: "Apple Tv Hd 32GB MHY93TZ/A", urunResimAd: "appletv", urunFiyat: 1.299)
        let u6 = Urunler(urunId: 6, urunAd: "Apple AirPods Max Bluetooth Kulaküstü Kulaklık - Green - MGYN3TU/A (Apple Türkiye Garantili)", urunResimAd: "kulaklikk", urunFiyat: 1.453)
        urunlerListe.append(u1)
        urunlerListe.append(u2)
        urunlerListe.append(u3)
        urunlerListe.append(u4)
        urunlerListe.append(u5)
        urunlerListe.append(u6)
        urunCollectionView.dataSource = self
        urunCollectionView.delegate = self
        let genislik = urunCollectionView.frame.size.width
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        let itemGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.78)
        urunCollectionView.collectionViewLayout = tasarim
    }
}
extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerListe.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = urunlerListe[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! urunlerCollectionViewCell
        cell.urunİmage.image = UIImage(named: urun.urunResimAd!)
        cell.urunAdLabel.text = urun.urunAd
        cell.urunFitayLabel.text = "\(urun.urunFiyat!) TL "
    
       return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let urun = urunlerListe[indexPath.row]
        print("Seçilen urun : \(urun.urunAd!)")
    }
    
}
