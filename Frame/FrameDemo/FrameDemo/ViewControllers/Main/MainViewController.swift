//
//  MainViewController.swift
//  FrameDemo
//
//  Created by Igor Matyushkin on 23.12.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit
import Frame

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var descriptionLabel: UILabel!
    
    @IBOutlet fileprivate weak var descriptionLabelHeightLayoutConstraint: NSLayoutConstraint!
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup navigation controller
        
        self.navigationItem.title = "Frame Demo"
        
        // Setup description label
        
        self.descriptionLabel.numberOfLines = 0
        
        let description = "This label's height is adjusted with Frame library."
        let attributedDescription = NSAttributedString(string: description, attributes: self.attributesForDescriptionLabelText())
        self.descriptionLabel.attributedText = attributedDescription
        self.descriptionLabelHeightLayoutConstraint.constant = self.descriptionLabel.frm.height(forAttributedText: attributedDescription)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Private object methods
    
    fileprivate func attributesForDescriptionLabelText() -> [NSAttributedStringKey : Any] {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        return [
            .font: UIFont.systemFont(ofSize: 36.0, weight: .thin),
            .foregroundColor: UIColor.darkText,
            .kern: 0.5,
            .paragraphStyle: paragraphStyle
        ]
    }
    
    // MARK: Actions
    
    // MARK: Protocol implementation
    
}
