//
//  HeaderView.swift
//  SocialNetwork
//
//  Created by JOSE PILAPIL on 2017-03-06.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: SHADOW_GRAY).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        
    }
    
}
