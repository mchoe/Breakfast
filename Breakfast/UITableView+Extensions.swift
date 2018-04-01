//
//  UITableView+Extensions.swift
//  Breakfast
//
//  Created by tarragon on 8/2/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import UIKit


extension UITableView {
    
    public func deselectSelectedCell() {
        guard let selectedIndexPath = self.indexPathForSelectedRow else {
            return
        }
        self.deselectRow(at: selectedIndexPath, animated: true)
    }
    
}
