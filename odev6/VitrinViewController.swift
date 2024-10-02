//
//  ViewController.swift
//  odev6
//
//  Created by Mehmet Faik Ayhan on 1.10.2024.
//

import UIKit

class VitrinViewController: UIViewController {
    
    @IBOutlet weak var vitrinCollectionView: UICollectionView!
    
    var vitrinList = [vitrinModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vitrinCollectionView.dataSource = self
        vitrinCollectionView.delegate = self
        
        vitrinCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        let v1 = vitrinModel(vitrinImg: "a8", vitrinLbl: "YENİKÖY MOTORS - 2022 AUDI A8 L 55 TFSI QUATTRO -AKS-MASAJ")
        let v2 = vitrinModel(vitrinImg: "ferrari", vitrinLbl: "HATASIZ BOYASIZ FERMAS GARANTİLİ 39.500 KM 458 ITALİA")
        let v3 = vitrinModel(vitrinImg: "g", vitrinLbl: "HATASIZ BAYİ ÇIKIŞ 2022 MERCEDES G 63 AMG+KARBON+DESIGNO FL")
        let v4 = vitrinModel(vitrinImg: "rr", vitrinLbl: "RK MOTORS RANGE ROVER SPORT SDV6 JOYSTİCK")
        let v5 = vitrinModel(vitrinImg: "s", vitrinLbl: "- MAJESTY - 2023 S400d ARKA AKS 3D BURMESTER 3D HEAD-UP MASAJ")
        let v6 = vitrinModel(vitrinImg: "pors", vitrinLbl: "25.000 KM BAYİ DOĞUŞ BAKIMLI MAKYAJLI ")
        let v7 = vitrinModel(vitrinImg: "ferrari-b", vitrinLbl: "GARANTİLİ 39.500 KM 458 ITALİA")
        let v8 = vitrinModel(vitrinImg: "bnt", vitrinLbl: "cars of FERRO 2023 BENTLEY CONTİNENTAL GT V8 AZURE BAYİ")
        let v9 = vitrinModel(vitrinImg: "a8", vitrinLbl: "23x80 Hangar Çadırı Depo Çadırı")
        let v10 = vitrinModel(vitrinImg: "ferrari", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v11 = vitrinModel(vitrinImg: "s", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v12 = vitrinModel(vitrinImg: "rr", vitrinLbl: "ARABA ARABA ARABA ARABA")
        
        vitrinList.append(v1)
        vitrinList.append(v2)
        vitrinList.append(v3)
        vitrinList.append(v4)
        vitrinList.append(v5)
        vitrinList.append(v6)
        vitrinList.append(v7)
        vitrinList.append(v8)
        vitrinList.append(v9)
        vitrinList.append(v10)
        vitrinList.append(v11)
        vitrinList.append(v12)
    }
}

extension VitrinViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vitrinList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vitrin = vitrinList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! VitrinCollectionViewCell
        cell.vitrinImg.image = UIImage(named: vitrin.vitrinImg!)
        cell.vitrinLbl.text = vitrin.vitrinLbl
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        
        return cell
    }
}

extension VitrinViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize(width: 195, height: 150)
        return CGSize(width: 186, height: 180)
    }
}


