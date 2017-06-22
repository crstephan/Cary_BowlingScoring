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
}

class Scoring {
    func addFrame(_ frame: Frame) -> Int {
        return frame.first + frame.second
    }
    
    func calcTotal(_ frames: [Frame]) -> Int {
        var total: Int = 0
        var wasSpare: Bool = false
        var wasStrike: Bool = false
        
        for frame in frames {
            if frame.first == 10 {
                wasStrike = true
                total += 10
            }
            
            let frameTotal = addFrame(frame)
            
            if wasStrike {
                
            }
            if wasSpare {
                total += frame.first
                wasSpare = false
            }
            
            if frameTotal == 10 {
                wasSpare = true
            }
            
            total += addFrame(frame)
        }
        return total
    }
}
