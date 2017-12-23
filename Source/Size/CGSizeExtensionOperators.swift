//
//  CGSizeExtensionOperators.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

extension CGSize {
    
    public static func +(a: CGSize, b: CGSize) -> CGSize {
        return CGSize(
            width: a.width + b.width,
            height: a.height + b.height
        )
    }
    
    public static func -(a: CGSize, b: CGSize) -> CGSize {
        return CGSize(
            width: a.width - b.width,
            height: a.height - b.height
        )
    }
    
}
