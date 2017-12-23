//
//  AttributedStringManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import Foundation

public class AttributedStringManager: BaseManager<NSAttributedString> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    public func sizeThatFits(_ size: CGSize) -> CGSize {
        let boundingRect = self.value.boundingRect(with: size, options: .usesLineFragmentOrigin, context: nil)
        
        return CGSize(
            width: ceil(boundingRect.size.width),
            height: ceil(boundingRect.size.height) + 1.0
        )
    }
    
    public func width(forHeight height: CGFloat) -> CGFloat {
        let maximumSize = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingRect = self.value.boundingRect(with: maximumSize, options: .usesLineFragmentOrigin, context: nil)
        return ceil(boundingRect.size.width) + 1.0
    }
    
    public func height(forWidth width: CGFloat) -> CGFloat {
        let maximumSize = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingRect = self.value.boundingRect(with: maximumSize, options: .usesLineFragmentOrigin, context: nil)
        return ceil(boundingRect.size.height) + 1.0
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
