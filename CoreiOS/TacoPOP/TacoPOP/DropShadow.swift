//
//  DropShadow.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-02-25.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        // implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset  = CGSize.zero
        layer.shadowRadius = 5
    }
}
