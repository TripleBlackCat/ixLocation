//
//  FirstViewController.swift
//  ixLocation
//
//  Created by Kavilan Nair on 2017/07/03.
//  Copyright © 2017 Kavilan Nair. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController {
    
    //why does miki use the "weak"??
    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        map.mapType = MKMapType.standard
        map.showsUserLocation = true
        
        let initialLocation = CLLocation(latitude: -33.9248685, longitude: 18.424055)
        centerMapOnLocation(location: initialLocation)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    let regionRadius: CLLocationDistance = 1000
    
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,                                                                regionRadius * 3.0, regionRadius * 3.0)
        map.setRegion(coordinateRegion, animated: true)
    }

}

