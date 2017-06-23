//
//  ScoringTests.swift
//  Cary_BowlingScoringTests
//
//  Created by Cary Stephan on 6/22/17.
//  Copyright © 2017 Cary Stephan. All rights reserved.
//

import XCTest
@testable import Cary_BowlingScoring

class ScoringTests: XCTestCase {
    
    let scoring = Scoring()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_calcTotal() {
        let expected = 12
        
        let frame1 = Frame(first: 3, second: 5, bonus: 0)
        let frame2 = Frame(first: 3, second: 1, bonus: 0)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_gotSpare() {
        let expected = 20
        
        let frame1 = Frame(first: 7, second: 3, bonus: 4)
        let frame2 = Frame(first: 4, second: 2, bonus: 0)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_gotStrike() {
        let expected = 28
        
        let frame1 = Frame(first: 10, second: 0, bonus: 9)
        let frame2 = Frame(first: 3, second: 6, bonus: 0)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_got3Strikes() {
        let expected = 60
        
        let frame1 = Frame(first: 10, second: 0, bonus: 20)
        let frame2 = Frame(first: 10, second: 0, bonus: 10)
        let frame3 = Frame(first: 10, second: 0, bonus: 0)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        frames.append(frame3)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_got10thFrameSpare() {
        let expected = 13
        
        let frame1 = Frame(first: 0, second: 0, bonus: 0)
        let frame2 = Frame(first: 0, second: 0, bonus: 0)
        let frame3 = Frame(first: 0, second: 0, bonus: 0)
        let frame4 = Frame(first: 0, second: 0, bonus: 0)
        let frame5 = Frame(first: 0, second: 0, bonus: 0)
        let frame6 = Frame(first: 0, second: 0, bonus: 0)
        let frame7 = Frame(first: 0, second: 0, bonus: 0)
        let frame8 = Frame(first: 0, second: 0, bonus: 0)
        let frame9 = Frame(first: 0, second: 0, bonus: 0)
        let frame10 = Frame(first: 7, second: 3, bonus: 3)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        frames.append(frame3)
        frames.append(frame4)
        frames.append(frame5)
        frames.append(frame6)
        frames.append(frame7)
        frames.append(frame8)
        frames.append(frame9)
        frames.append(frame10)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_got10thFrameStrike() {
        let expected = 16
        
        let frame1 = Frame(first: 0, second: 0, bonus: 0)
        let frame2 = Frame(first: 0, second: 0, bonus: 0)
        let frame3 = Frame(first: 0, second: 0, bonus: 0)
        let frame4 = Frame(first: 0, second: 0, bonus: 0)
        let frame5 = Frame(first: 0, second: 0, bonus: 0)
        let frame6 = Frame(first: 0, second: 0, bonus: 0)
        let frame7 = Frame(first: 0, second: 0, bonus: 0)
        let frame8 = Frame(first: 0, second: 0, bonus: 0)
        let frame9 = Frame(first: 0, second: 0, bonus: 0)
        let frame10 = Frame(first: 10, second: 0, bonus: 6)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        frames.append(frame3)
        frames.append(frame4)
        frames.append(frame5)
        frames.append(frame6)
        frames.append(frame7)
        frames.append(frame8)
        frames.append(frame9)
        frames.append(frame10)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_got10thFrameStrikeAndBonusStrikes() {
        let expected = 30
        
        let frame1 = Frame(first: 0, second: 0, bonus: 0)
        let frame2 = Frame(first: 0, second: 0, bonus: 0)
        let frame3 = Frame(first: 0, second: 0, bonus: 0)
        let frame4 = Frame(first: 0, second: 0, bonus: 0)
        let frame5 = Frame(first: 0, second: 0, bonus: 0)
        let frame6 = Frame(first: 0, second: 0, bonus: 0)
        let frame7 = Frame(first: 0, second: 0, bonus: 0)
        let frame8 = Frame(first: 0, second: 0, bonus: 0)
        let frame9 = Frame(first: 0, second: 0, bonus: 0)
        let frame10 = Frame(first: 10, second: 0, bonus: 20)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        frames.append(frame3)
        frames.append(frame4)
        frames.append(frame5)
        frames.append(frame6)
        frames.append(frame7)
        frames.append(frame8)
        frames.append(frame9)
        frames.append(frame10)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_gotPerfectGame() {
        let expected = 300
        
        let frame1 = Frame(first: 10, second: 0, bonus: 20)
        let frame2 = Frame(first: 10, second: 0, bonus: 20)
        let frame3 = Frame(first: 10, second: 0, bonus: 20)
        let frame4 = Frame(first: 10, second: 0, bonus: 20)
        let frame5 = Frame(first: 10, second: 0, bonus: 20)
        let frame6 = Frame(first: 10, second: 0, bonus: 20)
        let frame7 = Frame(first: 10, second: 0, bonus: 20)
        let frame8 = Frame(first: 10, second: 0, bonus: 20)
        let frame9 = Frame(first: 10, second: 0, bonus: 20)
        let frame10 = Frame(first: 10, second: 0, bonus: 20)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        frames.append(frame3)
        frames.append(frame4)
        frames.append(frame5)
        frames.append(frame6)
        frames.append(frame7)
        frames.append(frame8)
        frames.append(frame9)
        frames.append(frame10)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
}
