//
//  LabelManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit

public class LabelManager: BaseManager<UILabel> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    public func height(forAttributedText attributedText: NSAttributedString) -> CGFloat {
        let maximumSize = CGSize(width: self.value.bounds.size.width, height: .greatestFiniteMagnitude)
        let boundingRect = attributedText.boundingRect(with: maximumSize, options: .usesLineFragmentOrigin, context: nil)
        return ceil(boundingRect.size.height) + 1.0
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
