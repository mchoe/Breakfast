//
//  UIView+Snapshot.swift
//  Breakfast
//
//  Created by Michael Choe on 1/15/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import Foundation


extension UIView {
    
    public func snapshot() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, 0)
        self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let returnImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return returnImage
    }
    
    public func snapshotImageView() -> UIImageView? {
        return UIImageView(image: self.snapshot())
    }
    
}
