//
//  String+SequenceType.swift
//  Breakfast
//
//  Created by Michael Choe on 11/9/15.
//  Copyright © 2015 Strauss LLC. All rights reserved.
//

import Foundation


extension String: Sequence {
    
    public typealias Iterator = AnyIterator<Character>
    
    public func makeIterator() -> Iterator {
        var index = 0
        
        return AnyIterator({ () -> Character? in
            if index < self.characters.count {
                index += 1
                return self[index]
            }
            return nil
        })
        
    }
    
}
