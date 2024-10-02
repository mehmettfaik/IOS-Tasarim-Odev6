//
//  AramaTableViewCell.swift
//  odev6
//
//  Created by Mehmet Faik Ayhan on 1.10.2024.
//

import UIKit

class AramaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImg: UIImageView!
    @IBOutlet weak var genreLbl: UILabel!
    @IBOutlet weak var contextLbl: UILabel!
    
    func setArama(arama: Arama) {
        iconImg.image = arama.iconImg
        genreLbl.text = arama.title
        contextLbl.text = arama.subtitle
    }
}
