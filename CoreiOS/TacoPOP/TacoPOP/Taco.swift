//
//  Taco.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-02-25.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import Foundation

enum TacoShell: Int{
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int{
    case Loaded = 1
    case Plain = 2
}


struct Taco {
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinID: TacoProtein!
    private var _condimentID: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId:TacoShell{
        return _shellId
    }
    var proteinId: TacoProtein {
        return _proteinID
    }
    
    var condimentID: TacoCondiment {
        return _condimentID
    }
    
    init(id: Int, productName: String, shellID: Int, productId: Int, condimentID: Int) {
        _id = id
        _productName = productName
        
        //Taco shell
        switch shellID {
        case 2:
            self._shellId = TacoShell.Corn
        default:
            self._shellId  = TacoShell.Flour
        }
        
        switch productId {
        case 2:
            self._proteinID = TacoProtein.Chicken
        case 4:
            self._proteinID = TacoProtein.Fish
        case 3:
            self._proteinID = TacoProtein.Brisket
        default:
            self._proteinID = TacoProtein.Beef
        }
        
        switch condimentID {
        case 1:
            self._condimentID = TacoCondiment.Loaded
        default:
            self._condimentID = TacoCondiment.Plain
        }
    }
}
