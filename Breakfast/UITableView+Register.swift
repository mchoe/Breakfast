//
//  UITableView+Register.swift
//  Breakfast
//
//  Created by tarragon on 11/17/18.
//  Copyright © 2018 Strauss LLC. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: CanSupplyCellIdentifier>(_ cellType: T.Type) {
        let nib = UINib(nibName: cellType.cellIdentifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: cellType.cellIdentifier)
    }
}
