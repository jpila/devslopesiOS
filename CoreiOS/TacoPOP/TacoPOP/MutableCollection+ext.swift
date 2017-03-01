//
//  MutableCollection.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-03-01.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func Shuffle() {
        if count < 2 {return}
     
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else {continue}
            swap(&self[i], &self[j])
        }
        
    }
}
