//
//  Location.swift
//  Rainy Shine
//
//  Created by JOSE PILAPIL on 2017-02-19.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init(){}
    var latitude: Double!
    var longitude: Double!
}
