//
//  ReusableView.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-02-28.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit


protocol ReusableView: class {
    
}


extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
