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
    
    var total: Int {
        get {
            return first + second
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
        var frameNumber: Int = 0
        var total: Int = 0
        var previousWasSpare: Bool = false
        var leftToCountForStrike: Int = 0
        
        for frame in frames {
            frameNumber += 1
            
            total += frame.total
            
            if frameNumber <= 10 {
                if leftToCountForStrike > 0 {
                    total += frame.total
                }
                
                if previousWasSpare {
                    total += frame.first
                }
            }
            
            if frame.isStrike {
                leftToCountForStrike = 2
            } else {
                leftToCountForStrike -= 1
            }
            
            previousWasSpare = frame.isSpare
       }
        return total
    }
}
