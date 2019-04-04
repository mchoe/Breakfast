//
//  CanSupplyCellIdentifier.swift
//  Breakfast
//
//  Created by tarragon on 11/17/18.
//  Copyright © 2018 Strauss LLC. All rights reserved.
//

import Foundation

protocol CanSupplyCellIdentifier {
    static var cellIdentifier: String { get }
}

extension CanSupplyCellIdentifier {
    static var cellIdentifier: String {
        return String(describing: self.self)
    }
}
