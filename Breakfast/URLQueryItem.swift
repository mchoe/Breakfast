//
//  URLQueryItem.swift
//  QuickIssues
//
//  Created by Michael Choe on 1/11/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import Foundation

extension Dictionary where Key: ExpressibleByStringLiteral, Value: ExpressibleByStringLiteral {
    
    public var asQueryItems: [URLQueryItem] {
        get {
            var returnArray = [URLQueryItem]()
            for (key, value) in self {
                returnArray.append(URLQueryItem(name: key as! String, value: (value as! String)))
            }
            return returnArray
        }
    }
    
}
