//
//  TacoCell.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-02-28.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {
    
    @IBOutlet weak var tacoImage: UIImageView!

    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName   
    }

}
