//
//  UIView+InitFromNib.swift
//  Breakfast
//
//  Created by Michael Choe on 1/28/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import UIKit


extension UIView {
    
    public class func fromNib<T>() -> T {
        let viewArray = Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)!
        return viewArray.first as! T
    }
    
}
