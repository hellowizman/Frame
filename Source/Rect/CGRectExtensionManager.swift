//
//  CGRectExtensionManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension CGRect {
    
    public var frm: RectManager {
        get {
            return RectManager(value: self)
        }
    }
    
}
