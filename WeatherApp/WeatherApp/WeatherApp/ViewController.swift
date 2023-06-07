//
//  ViewController.swift
//  WeatherApp
//
//  Created by Chetan Bhalara on 6/5/23.
//

import UIKit
import SwiftUI
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var checkWeatherButton: UIButton!
    @IBOutlet var aboutusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkWeather(sender: UIButton)
    {
        var weatherVC = WeatherView()
        weatherVC.presentingVC = self
        let hostingVC = UIHostingController(rootView: weatherVC)
        hostingVC.modalPresentationStyle = .fullScreen
        hostingVC.modalTransitionStyle = .crossDissolve
        present(hostingVC, animated: true, completion: nil)
    }
    
    @IBAction func aboutus(sender: UIButton)
    {
        var aboutusVC = AboutUs()
        aboutusVC.presentingVC = self
        let hostingVC = UIHostingController(rootView: aboutusVC)
        hostingVC.modalPresentationStyle = .fullScreen
        hostingVC.modalTransitionStyle = .crossDissolve
        present(hostingVC, animated: true, completion: nil)
    }
}

