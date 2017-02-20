//
//  weatherCell.swift
//  Rainy Shine
//
//  Created by JOSE PILAPIL on 2017-02-17.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    //MARK: Outlets
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var tempHighLabel: UILabel!
    @IBOutlet weak var tempLowLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCell(forecast: Forecast){
        tempLowLabel.text = "\(forecast.lowTemp)"
        tempHighLabel.text = "\(forecast.highTemp)"
        dayLabel.text = forecast.date
        weatherType.text = forecast.weatherType
        weatherImage.image = UIImage(named: forecast.weatherType)
    }
    
}
