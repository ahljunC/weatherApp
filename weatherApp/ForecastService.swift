//
//  ForecastService.swift
//  weatherApp
//
//  Created by Ahljun Ciar on 28/11/17.
//  Copyright © 2017 Ahljun Ciar. All rights reserved.
//

import Foundation

class ForecastService {
    //https://api.darksky.net/forecast/94576ff0452d40527d88010177fba10e/-37.8136,144.9631
    
    let forecastAPIKey: String
    let forecastBaseURL: URL?
    
    init(APIKey: String) {
        self.forecastAPIKey = APIKey
        forecastBaseURL = URL(String: "https://api.darksky.net/forecast/\(APIKey)")
    }
    
    func getCurrentWeather(latitude: Double, longitude: Double) {
        let forecastURL = URL(String: "\(forecastBaseURL)/\(latitude),\(longitude)")
    }
    
}





















