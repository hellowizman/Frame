//
//  RectManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public class RectManager: BaseManager<CGRect> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    public func inset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
        return CGRect(
            x: self.value.origin.x + left,
            y: self.value.origin.y + top,
            width: self.value.size.width - left - right,
            height: self.value.size.height - top - bottom
        )
    }
    
    public func offset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> CGRect {
        return CGRect(
            x: self.value.origin.x - left,
            y: self.value.origin.y - top,
            width: self.value.size.width + left + right,
            height: self.value.size.height + top + bottom
        )
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
