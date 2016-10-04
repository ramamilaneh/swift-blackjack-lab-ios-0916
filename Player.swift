//
//  Player.swift
//  swift-blackjack-lab
//
//  Created by Rama Milaneh on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Player{
    var name: String
    
    var cards = [Card]()
    
    var handscore: UInt{
        return calculateHandScore(of: cards)
    }
    
    var blackjack: Bool{return cards.count == 2 && handscore == 21}
       
    
    var busted: Bool{return self.handscore>21}
    
    var stayed: Bool = false
    
    var mayHit: Bool{return !stayed && !busted && !blackjack }
    
    
    var tokens: UInt
    
    var description: String{
        if self.blackjack{return "blackjack".lowercased()}
        if self.busted{return "busted"}
         if self.stayed{return "stayed"}
         else {return "mayHit"}
      }
    
    init(name: String){
        self.name = name
        self.tokens = 100
    }
    
    private func calculateHandScore(of cards: [Card]) ->UInt{
        var calculatedValue : UInt = 0
        var hasAce : Bool = false
        for card in cards{
            if card.rank == "A"{
                hasAce = true
            }
            calculatedValue += card.cardValue
        }
        if hasAce && calculatedValue + 10 <= 21{
            calculatedValue += 10
        }
        
        return calculatedValue
    }
    
    func canPlaceBet( amount:UInt) ->Bool{return amount <= self.tokens}
    
    func didWin (amount:UInt){self.tokens += amount}
    
    func didLose(amount:UInt){self.tokens -= amount}
    
    

    
}
