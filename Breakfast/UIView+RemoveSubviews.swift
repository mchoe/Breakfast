//
//  UIView+RemoveSubviews.swift
//  Breakfast
//
//  Created by Michael Choe on 4/1/18.
//  Copyright © 2018 Strauss LLC. All rights reserved.
//

import UIKit

extension UIView {
    public func removeAllSubviews() {
        for thisView in self.subviews {
            thisView.removeFromSuperview()
        }
    }
}
