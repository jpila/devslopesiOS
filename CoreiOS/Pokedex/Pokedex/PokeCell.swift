//
//  PokeCell.swift
//  Pokedex
//
//  Created by JOSE PILAPIL on 2017-02-20.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var pokemon: Pokemon!
    
    func configureCell(_ pokemon: Pokemon){
        self.pokemon = pokemon
        nameLabel.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexID)")
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
}
