//
//  House.swift
//  swift-blackjack-lab
//
//  Created by Rama Milaneh on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House: Player{
    
    
    
    var mustHit: Bool {return self.handscore<17}
    
    override init(name: String){
    super.init(name: name)
        tokens = 1000

        
    }
    
    
}
