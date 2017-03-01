//
//  DataService.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-02-25.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func deliciousTacoDataLoaded()
}

class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
       
        // Chicken Tacos
        tacoArray.append(Taco(id: 1, productName: "Loaded Flour Chicken Taco", shellID: 1, productId: 2, condimentID: 1))
        tacoArray.append(Taco(id: 2, productName: "Loaded Corn Chicken Taco", shellID: 2, productId: 2, condimentID: 1))
        tacoArray.append(Taco(id: 3, productName: "Plain Flour Chicken Taco", shellID: 1, productId: 2, condimentID: 2))
        tacoArray.append(Taco(id: 4, productName: "Plain Corn Chicken Taco", shellID: 2, productId: 2, condimentID: 2))
        
        // Beef Tacos
        tacoArray.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shellID: 1, productId: 1, condimentID: 1))
        tacoArray.append(Taco(id: 6, productName: "Loaded Corn Beef Taco", shellID: 2, productId: 1, condimentID: 1))
        tacoArray.append(Taco(id: 7, productName: "Plain Flour Beef Taco", shellID: 1, productId: 1, condimentID: 2))
        tacoArray.append(Taco(id: 8, productName: "Plain Corn Beef Taco", shellID: 2, productId: 1, condimentID: 2))
        
        // Brisket Tacos
        tacoArray.append(Taco(id: 9, productName: "Loaded Flour Brisket Taco", shellID: 1, productId: 3, condimentID: 1))
        tacoArray.append(Taco(id: 10, productName: "Loaded Corn Brisket Taco", shellID: 2, productId: 3, condimentID: 1))
        tacoArray.append(Taco(id: 11, productName: "Plain Flour Brisket Taco", shellID: 1, productId: 3, condimentID: 2))
        tacoArray.append(Taco(id: 12, productName: "Plain Corn Brisket Taco", shellID: 2, productId: 3, condimentID: 2))
        
        // Fish Tacos
        tacoArray.append(Taco(id: 13, productName: "Loaded Flour Fish Taco", shellID: 1, productId: 4, condimentID: 1))
        tacoArray.append(Taco(id: 14, productName: "Loaded Corn Fish Taco", shellID: 2, productId: 4, condimentID: 1))
        tacoArray.append(Taco(id: 15, productName: "Plain Flour Fish Taco", shellID: 1, productId: 4, condimentID: 2))
        tacoArray.append(Taco(id: 16, productName: "Plain Corn Fish Taco", shellID: 2, productId: 4, condimentID: 2))
        
        delegate?.deliciousTacoDataLoaded()

    }
}
