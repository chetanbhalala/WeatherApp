//
//  WeatherDataRepository.swift
//  WeatherApp
//
//  Created by Chetan Bhalara on 6/5/23.
//

import Foundation

protocol WeatherDataRepository {
    func getWeatherData(city: String) throws -> WeatherData
}
