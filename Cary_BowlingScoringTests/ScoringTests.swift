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

    func test_addFrame() {
        let expected = 9
        let frame1 = Frame(first: 4, second: 5)
        let result = scoring.addFrame(frame1)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_calcTotal() {
        let expected = 12
        let frame1 = Frame(first: 3, second: 5)
        let frame2 = Frame(first: 3, second: 1)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_gotSpare() {
        let expected = 20
        let frame1 = Frame(first: 7, second: 3)
        let frame2 = Frame(first: 4, second: 2)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
    func test_gotStrike() {
        let expected = 28
        let frame1 = Frame(first: 10, second: 0)
        let frame2 = Frame(first: 3, second: 6)
        
        var frames: [Frame] = []
        frames.append(frame1)
        frames.append(frame2)
        
        let result = scoring.calcTotal(frames)
        
        XCTAssert(expected == result, "expected \(expected) got \(result)")
    }
    
}
