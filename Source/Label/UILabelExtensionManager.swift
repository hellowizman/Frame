//
//  UILabelExtensionManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit

public extension UILabel {
    
    public var frm: LabelManager {
        get {
            return LabelManager(value: self)
        }
    }
    
}
