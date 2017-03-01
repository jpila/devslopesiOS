//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-03-01.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {
    
    
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
