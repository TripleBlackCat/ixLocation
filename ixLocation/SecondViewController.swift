//
//  SecondViewController.swift
//  ixLocation
//
//  Created by Kavilan Nair on 2017/07/03.
//  Copyright © 2017 Kavilan Nair. All rights reserved.
//

import UIKit
import GoogleMaps

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.9248685, longitude: 18.424055, zoom: 12.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.9248685, longitude: 18.424055)
        marker.title = "South Africa"
        marker.snippet = "Cape Town"
        marker.map = mapView
    }


}

