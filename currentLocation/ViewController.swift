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

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var locationManager = CLLocationManager()

    
    
    @IBOutlet weak var mapViewX1: MKMapView!
    
    
    
    
    override func viewDidLoad() {
        print("In vewDidLoad")
        
        
        locationManager.delegate=self
        mapViewX1.delegate = self
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
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation)
    {
        let region = MKCoordinateRegion(center: userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0, longitudeDelta: 0) )
        self.mapViewX1.setRegion(region, animated: true)
    }
    
   
        
    


}

