//
//  UIView+Shake.swift
//  NotesApp
//
//  Created by collardgreens on 3/21/15.
//  Copyright (c) 2015 Strauss LLC. All rights reserved.
//

import UIKit

extension UIView {
    
    func shake(numberOfTimes: Float = 3, offset: CGFloat = 14.0) {
        
        let shakeAnimation = CABasicAnimation(keyPath: "position")
        shakeAnimation.duration = 0.04
        shakeAnimation.repeatCount = numberOfTimes
        shakeAnimation.autoreverses = true
        shakeAnimation.fromValue = NSValue(CGPoint: CGPointMake(self.center.x - offset, self.center.y))
        shakeAnimation.toValue = NSValue(CGPoint: CGPointMake(self.center.x + offset, self.center.y))
        self.layer.addAnimation(shakeAnimation, forKey: "position")
        
    }
}
