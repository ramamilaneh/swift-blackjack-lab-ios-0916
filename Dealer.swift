//
//  Dealer.swift
//  swift-blackjack-lab
//
//  Created by Rama Milaneh on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer{
    
    var deck = Deck()
    
    var house : House = House.init(name: "")
    
    var player: House = House.init(name: "")
    
    var bet: UInt = 0
    
//    init(nameOfHouse: String, nameOfPlayer: String){
//        self.house.name = nameOfHouse
//        self.player.name = nameOfPlayer
//        
//    }
    
    func placeBet(_ bet: UInt) ->Bool{
        if self.house.canPlaceBet(amount: bet) && self.player.canPlaceBet(amount: bet){
            self.bet = bet
            return true
        }else{
        
        return false
            }
    }
    
    func deal(){
        
        self.house.stayed = false
        
        self.player.stayed = false
        
        self.player.cards = []
        
        self.house.cards = []
        
        deck.shuffle()
        
        self.house.cards.append(deck.drawCard())
        self.house.cards.append(deck.drawCard())
        self.player.cards.append(deck.drawCard())
        self.player.cards.append(deck.drawCard())
 
        }
       
    func turn(_ house: House){
            if self.house.mayHit {
                if self.house.mustHit {
                    self.house.cards.append(deck.drawCard())
                }else{
                    self.house.stayed = true
                }
            }
        }
    
    func winner() ->String{
        
        
        if ((self.house.busted)&&(self.player.busted==false)) || (self.player.cards.count == 5 && !self.player.busted) || (self.player.handscore > self.house.handscore)&&(!self.player.busted)&&(!self.house.mayHit)||(self.player.blackjack)&&(!self.house.blackjack){
            return "player"
        }
        if (self.player.busted == true) || (self.house.handscore >= self.player.handscore){
            return "house"
        }
        else {
            return "no"
        }
        
    }
    
    func award() ->String{
        switch self.winner(){
        case "player":
            self.player.tokens += self.bet
            self.house.tokens -= self.bet
            return "The player won"
            case "house":
            self.house.tokens += self.bet
            self.player.tokens -= self.bet
            return "The house won"
        default:
            return "There is no winner"
            
        }
    }
        
        
}
