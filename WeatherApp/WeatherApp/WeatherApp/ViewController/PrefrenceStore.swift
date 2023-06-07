//
//  PrefrenceStore.swift
//  WeatherApp
//
//  Created by Chetan Bhalara on 6/5/23.
//

import Foundation

class PrefrenceStore {
    func storeLastSearch(city: String){
        UserDefaults.standard.set(city, forKey: "lastSeachCity") //setObject
    }
    
    func retrieveLastSearch() -> String {
        if (UserDefaults.standard.string(forKey: "lastSeachCity") == nil) {
            return ""
        }
        return UserDefaults.standard.string(forKey: "lastSeachCity")!
    }
}
