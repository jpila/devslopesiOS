//
//  Pokemon.swift
//  Pokedex
//
//  Created by JOSE PILAPIL on 2017-02-19.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import Foundation

class Pokemon {
    fileprivate var _name: String!
    fileprivate var _pokedexid: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexID: Int {
        return _pokedexid
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexid = pokedexId
    }
}
