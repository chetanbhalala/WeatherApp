//
//  DependencyInjection.swift
//  WeatherApp
//
//  Created by Chetan Bhalara on 6/5/23.
//

import Foundation

class DependencyInjection {
    
    static func getWeatherDataRepository() -> WeatherDataRepository {
        
        let jsonDecoder = JSONDecoder()
        
        return RemoteWeatherDataRepository(jsondecoder: jsonDecoder, metricsManager: getMetricsManager())
    }
    
    static func getPreferenceStore() -> PrefrenceStore {
        return PrefrenceStore()
    }
    
    static func getMetricsManager() -> MetricsManager {
        return MetricsManager()
    }
}
