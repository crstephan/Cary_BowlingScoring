//
//  Scoring.swift
//  Cary_BowlingScoring
//
//  Created by Cary Stephan on 6/22/17.
//  Copyright © 2017 Cary Stephan. All rights reserved.
//

import Foundation

struct Frame {
    var first: Int
    var second: Int
    var bonus: Int
    
    var total: Int {
        get {
            return first + second + bonus
        }
    }
    
    var isStrike: Bool {
        get {
            return first == 10
        }
    }
    
    var isSpare: Bool {
        get {
            return total == 10 && first != 10
        }
    }
}

class Scoring {
    func calcTotal(_ frames: [Frame]) -> Int {
        var total: Int = 0
        
        for frame in frames {
            total += frame.total
        }
        
        return total
    }
}
