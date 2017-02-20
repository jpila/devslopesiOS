//
//  Constants.swift
//  Rainy Shine
//
//  Created by JOSE PILAPIL on 2017-02-17.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE  = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "b1b15e88fa797225412429c1c50c122a1"
let API_KEY2 = "cd6a2a545a8028d88424687fff433792"

let FORECASTBASE = "https://samples.openweathermap.org/data/2.5/forecast/daily?"

typealias DownloadComplete = () -> ()


let FORECAST_WEATHER_URL = "\(FORECASTBASE)\(LATITUDE)\(Location.sharedInstance.latitude)\(LONGITUDE)\(Location.sharedInstance.longitude)\(APP_ID)\(API_KEY)"

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?\(LATITUDE)\(Location.sharedInstance.latitude)\(LONGITUDE)\(Location.sharedInstance.longitude)\(APP_ID)\(API_KEY2)"
//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)120\(LONGITUDE)100\(APP_ID)\(API_KEY2)"

