//
//  URLQueryItemTests.swift
//  Breakfast
//
//  Created by Michael Choe on 1/30/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import XCTest

class URLQueryItemTests: XCTestCase {
    
    func testDictionaryToQueryItemConversion() {
        let testDictionary: [String : String] = [
            "first": "First Value",
            "second": "Second Value",
            "third": "Third Value"
        ]
        
        let queryItemArray: [URLQueryItem] = testDictionary.asQueryItems
        
        for thisQueryItem in queryItemArray {
            XCTAssert(testDictionary[thisQueryItem.name] == thisQueryItem.value, "Query item conversion didn't work")
        }
    }
    
}
