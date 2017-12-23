//
//  StringManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit

public class StringManager: BaseManager<String> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    public func sizeThatFits(_ size: CGSize, withAttributes attributes: [NSAttributedStringKey : Any]?) -> CGSize {
        let boundingRect = self.value.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        
        return CGSize(
            width: ceil(boundingRect.size.width),
            height: ceil(boundingRect.size.height) + 1.0
        )
    }
    
    public func width(forHeight height: CGFloat, andAttributes attributes: [NSAttributedStringKey : Any]?) -> CGFloat {
        let maximumSize = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingRect = self.value.boundingRect(with: maximumSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        return ceil(boundingRect.size.width) + 1.0
    }
    
    public func height(forWidth width: CGFloat, andAttributes attributes: [NSAttributedStringKey : Any]?) -> CGFloat {
        let maximumSize = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingRect = self.value.boundingRect(with: maximumSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        return ceil(boundingRect.size.height) + 1.0
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
