//
//  CurrentWeather.swift
//  Rainy Shine
//
//  Created by JOSE PILAPIL on 2017-02-17.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//


import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemperature: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemperature == nil {
            _currentTemperature = 0.0
        }
        return _currentTemperature
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete){
        //Alamofire download
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        
            Alamofire.request(currentWeatherURL).responseJSON { response in
                let result = response.result
                print(result)
                if let dict = result.value as? Dictionary<String, AnyObject> {
                    if let name = dict["name"] as? String {
                        self._cityName = name.capitalized
                    }
                    
                    if let weather = dict["weather"] as? [Dictionary<String,AnyObject>] {
                        if let main = weather[0]["main"] as? String {
                            self._weatherType = main.capitalized
                            print(self._weatherType)
                        }
                        if let main = dict["main"] as? Dictionary<String,AnyObject> {
                            if let currentTemperature = main["temp"] as? Double {
                                let kelvinToFahrenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                                let kelvinToFahrenHeight = Double(round(10 * kelvinToFahrenheitPreDivision/10))
                                self._currentTemperature = kelvinToFahrenHeight
                                print(self._currentTemperature)
                                completed()
                            }
                        }
                    }
                }
                
        }
    }
    

    
}


