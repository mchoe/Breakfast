//
//  String+SequenceType.swift
//  Breakfast
//
//  Created by Michael Choe on 11/9/15.
//  Copyright © 2015 Strauss LLC. All rights reserved.
//

import Foundation


extension String: SequenceType {
    
    public typealias Generator = AnyGenerator<Character>
    
    public func generate() -> Generator {
        var index = 0
        
        return anyGenerator({ () -> Character? in
            if index < self.characters.count {
                return self[index++]
            }
            return nil
        })
        
    }
    
}