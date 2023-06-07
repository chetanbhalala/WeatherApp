//
//  MetricsManager.swift
//  WeatherApp
//
//  Created by Chetan Bhalara on 6/5/23.
//

import Foundation

class MetricsManager {
    
    func emitMatrics(matricName: String, time: Double) {
        let time = time * 1_000
        print("\n \(matricName): \(String(format: "%.2f", time)) milliseconds.")
    }
}
