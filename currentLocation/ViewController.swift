//
//  ViewController.swift
//  currentLocation
//
//  Created by Harish Hardy on 26/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()

    
    
    @IBOutlet weak var mapViewX1: MKMapView!
    
    
    
    
    override func viewDidLoad() {
        print("In vewDidLoad")
        
        locationManager.delegate = self
        
       
        
       
        locationManager.delegate=self;
        locationManager.desiredAccuracy=kCLLocationAccuracyBest;
        locationManager.distanceFilter=kCLDistanceFilterNone;
        locationManager.requestWhenInUseAuthorization();
        locationManager.startMonitoringSignificantLocationChanges();
        locationManager.startUpdatingLocation();
        
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        print("Error",error)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        print("Location",locations)
    }


}

