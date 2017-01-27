//
//  String+Localized.swift
//  Breakfast
//
//  Created by Michael Choe on 1/26/17.
//  Copyright © 2017 Strauss LLC. All rights reserved.
//

import Foundation


extension String {
    
    public var localized: String {
        return NSLocalizedString(self, comment: self)
    }
    
    public func localized(comment: String? = nil) -> String {
        return NSLocalizedString(self, comment: (comment != nil ? comment! : ""))
    }
    
    public func localized(with values: CVarArg...) -> String {
        return NSString.localizedStringWithFormat(NSString(string: self.localized), values) as String
    }
    
}
