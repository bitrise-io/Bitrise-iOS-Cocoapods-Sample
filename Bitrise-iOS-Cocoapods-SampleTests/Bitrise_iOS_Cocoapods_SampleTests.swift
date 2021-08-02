//
//  Bitrise_iOS_Cocoapods_SampleTests.swift
//  Bitrise-iOS-Cocoapods-SampleTests
//
//  Created by Robert Gacsi on 2021. 08. 02..
//

import XCTest
@testable import Bitrise_iOS_Cocoapods_Sample

class Bitrise_iOS_Cocoapods_SampleTests: XCTestCase {

    var webHelper: WebHelper!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.        
        self.webHelper = WebHelper()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddOrUpdateQueryStringParameter() {
        let value = "https://example.com?abc=123&lmn=tuv&xyz=987"
        
        let newValue = self.webHelper.addOrUpdateQueryStringParameter(url: value, key: "aBc", value: "555")
        let expectedValue = "https://example.com?aBc=555&lmn=tuv&xyz=987"
        
        XCTAssertEqual(newValue, expectedValue, "String should be \(expectedValue)")
    }
    
    func testRemoveQueryStringParameter() {
        let value = "https://example.com?abc=123&lmn=tuv&xyz=987"
        
        let newValue = self.webHelper.removeQueryStringParameter(url: value, key: "xyz")
        let expectedValue = "https://example.com?abc=123&lmn=tuv"
        
        XCTAssertEqual(newValue, expectedValue, "String should be \(expectedValue)")
    }
    
    func testAddOrUpdateQueryStringParameterForAdd() {
        let value = "https://example.com?abc=123&lmn=tuv&xyz=987"
        
        let newValue = self.webHelper.addOrUpdateQueryStringParameter(url: value, key: "def", value: "456")
        let expectedValue = "https://example.com?abc=123&lmn=tuv&xyz=987&def=456"
        
        XCTAssertEqual(newValue, expectedValue, "String should be \(expectedValue)")
    }
}
