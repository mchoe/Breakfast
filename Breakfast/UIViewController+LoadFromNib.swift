//
//  UIViewController+LoadFromNib.swift
//  Breakfast
//
//  Created by Michael Choe on 1/30/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import UIKit

extension UIViewController {
    
    public convenience init(nibName: String? = nil) {
        let nibNameToUse: String
        if let nibName = nibName {
            nibNameToUse = nibName
        } else {
            let vcName = String(describing: type(of: self))
            nibNameToUse = vcName.replacingOccurrences(of: "Controller", with: "")
        }
        self.init(nibName: nibNameToUse, bundle: nil)
    }
    
}
