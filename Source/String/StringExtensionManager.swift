//
//  StringExtensionManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension String {
    
    public var frm: StringManager {
        get {
            return StringManager(value: self)
        }
    }
    
}
