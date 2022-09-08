//
//  Tests.swift
//  Tests
//
//  Created by Dmitry Gorbunow on 9/8/22.
//

import XCTest

class Tests: XCTestCase {
    
    let solution = Solution()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test0() {
        let value = solution.titleToNumber("A")
        XCTAssertEqual(value, 1)
    }
    func test1() {
        let value = solution.titleToNumber("AB")
        XCTAssertEqual(value, 28)
    }
    func test2() {
        let value = solution.titleToNumber("ZY")
        XCTAssertEqual(value, 701)
    }
    
}
