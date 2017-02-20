//
//  ViewController.swift
//  Rainy Shine
//
//  Created by JOSE PILAPIL on 2017-02-17.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire


class WeatherVC : UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate{
    
    //MARK: Outlets
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherStatus: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    
    var forecasts = [Forecast]()
    
    var forecast: Forecast!
    var currentWeather: CurrentWeather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()
        
        print(locationManager.location?.coordinate)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        locationAuthStatus()
    }
    
    func downloadForecastData(completed: DownloadComplete) {
        print(FORECAST_WEATHER_URL)
        let forecastURL = URL(string: FORECAST_WEATHER_URL)
        Alamofire.request(forecastURL!).responseJSON{ response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["list"] as? [Dictionary<String, AnyObject>]{
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self.forecasts.append(forecast)
                    }
                    self.forecasts.remove(at: 0)
                    self.tableView.reloadData()
                }
            }
        }
        completed()
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    //MARK: TableView Functions
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? WeatherCell {
        let forecast = forecasts[indexPath.row]
            cell.configureCell(forecast: forecast)
            return cell
        } else {
            return WeatherCell()
        }
        
    }
    
    
    func updateUI(){
     dateLabel.text = currentWeather.date
        weatherStatus.text = currentWeather._weatherType
        temperatureLabel.text = "\(currentWeather.currentTemp)"
        locationLabel.text = currentWeather.cityName
        weatherImage.image = UIImage(named: currentWeather.weatherType)
    }
    
    func locationAuthStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            currentLocation = locationManager.location
            Location.sharedInstance.latitude = currentLocation.coordinate.latitude
            Location.sharedInstance.longitude = currentLocation.coordinate.longitude
            currentWeather.downloadWeatherDetails {
                self.downloadForecastData {
                    //
                    print(CURRENT_WEATHER_URL)
                    self.updateUI()
                }
            }

            print(currentLocation)
            
        }else {
            locationManager.requestWhenInUseAuthorization()
            locationAuthStatus()
        }
    }

}

