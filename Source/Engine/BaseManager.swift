//
//  BaseManager.swift
//  Frame
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit

public class BaseManager<Value: Any> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(value: Value) {
        // Initialize internal value
        
        self.value = value
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    public fileprivate(set) var value: Value!
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
