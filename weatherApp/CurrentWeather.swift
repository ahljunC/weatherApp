//
//  CurrentWeather.swift
//  weatherApp
//
//  Created by Ahljun Ciar on 28/11/17.
//  Copyright © 2017 Ahljun Ciar. All rights reserved.
//

import Foundation

class CurrentWeather {
    let temperature: Int?
    let humidity: Int?
    let precipProbability: Int?
    let summary: String?
    let icon: String?
    
    struct WeatherKeys {
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let precipProbability = "precipProbability"
        static let summary = "summary"
        static let icon = "icon"
    }
    
    init (weatherDictionary: [String : Any]){
        temperature = weatherDictionary[WeatherKeys.temperature] as? Int
        summary = weatherDictionary[WeatherKeys.summary] as? String
        icon = weatherDictionary[WeatherKeys.icon] as? String
        
        //converting humidity to whole number
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double {
            humidity = Int(humidityDouble * 100)
        }
        else {
            humidity = nil
        }
        
        //converting probability to whole number
        if let precipDouble = weatherDictionary[WeatherKeys.precipProbability] as? Double {
            precipProbability = Int(precipDouble * 100)
        }
        else {
            precipProbability = nil
        }
        
    }
    

}


















