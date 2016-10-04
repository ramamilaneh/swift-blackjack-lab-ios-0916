//
//  CardSpec.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest
import Foundation
import Quick
import Nimble
@testable import swift_blackjack_lab

class CardSpec: QuickSpec {
    override func spec() {
        describe("Card") {
            let aceOfSpades : Card = Card(suit: "♠︎", rank: "A")
            let queenOfHearts : Card = Card(suit: "♥︎", rank: "Q")
            let tenOfDiamonds : Card = Card(suit: "♦︎", rank: "10")
            let twoOfClubs : Card = Card(suit: "♣︎", rank: "2")
            
            describe("initializer") {
                it("should set suit property") {
                    expect(aceOfSpades.suit).to(equal("♠︎"))
                    expect(queenOfHearts.suit).to(equal("♥︎"))
                    expect(tenOfDiamonds.suit).to(equal("♦︎"))
                    expect(twoOfClubs.suit).to(equal("♣︎"))
                }
                
                it("should set rank property") {
                    expect(aceOfSpades.rank).to(equal("A"))
                    expect(queenOfHearts.rank).to(equal("Q"))
                    expect(tenOfDiamonds.rank).to(equal("10"))
                    expect(twoOfClubs.rank).to(equal("2"))
                }
                
                it("should set cardLabel property") {
                    expect(aceOfSpades.cardLabel).to(equal("♠︎A"))
                    expect(queenOfHearts.cardLabel).to(equal("♥︎Q"))
                    expect(tenOfDiamonds.cardLabel).to(equal("♦︎10"))
                    expect(twoOfClubs.cardLabel).to(equal("♣︎2"))
                }
                
                it("should set cardValue property") {
                    expect(aceOfSpades.cardValue).to(equal(1))
                    expect(queenOfHearts.cardValue).to(equal(10))
                    expect(tenOfDiamonds.cardValue).to(equal(10))
                    expect(twoOfClubs.cardValue).to(equal(2))
                }
            }
            
//            describe("description") {
//                it("should return the cardLabel") {
//                    expect(aceOfSpades.description).to(equal("♠︎A"))
//                    expect(queenOfHearts.description).to(equal("♥︎Q"))
//                    expect(tenOfDiamonds.description).to(equal("♦︎10"))
//                    expect(twoOfClubs.description).to(equal("♣︎2"))
//                }
//            }
        }
    }
}

