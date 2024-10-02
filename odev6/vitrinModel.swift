//
//  vitrinModel.swift
//  odev6
//
//  Created by Mehmet Faik Ayhan on 1.10.2024.
//

import Foundation
class vitrinModel {
    
    var vitrinImg : String?
    var vitrinLbl : String?

init () {
}

init (vitrinImg : String, vitrinLbl : String ) {
    
    self.vitrinImg = vitrinImg
    self.vitrinLbl = vitrinLbl
    }
}
