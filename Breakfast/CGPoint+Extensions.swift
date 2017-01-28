//
//  CGPoint+Extensions.swift
//  Breakfast
//
//  Created by Michael Choe on 1/26/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import Foundation

public func +(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func -(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

extension CGPoint {
    
    public func delta(from point: CGPoint) -> CGPoint {
        return CGPoint(x: point.x - self.x, y: point.y - self.y)
    }
    
}
