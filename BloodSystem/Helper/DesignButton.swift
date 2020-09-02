//
//  DesignButton.swift
//  BloodSystem
//
//  Created by Ahmed Saeed on 8/5/20.
//  Copyright © 2020 Ahmed Saeed. All rights reserved.
//

import UIKit

@IBDesignable class DesignButton: UIButton {
    
    @IBInspectable var roundCorner : CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = roundCorner
        }
    }
    @IBInspectable var BorderColor : UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = BorderColor.cgColor
        }
    }
    @IBInspectable var BorderWidth : CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = BorderWidth
        }
    }
}
