//
//  CircleButton.swift
//  Scribe
//
//  Created by JOSE PILAPIL on 2017-03-01.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit


@IBDesignable


class CircleButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet{setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = cornerRadius
    }
    
}
