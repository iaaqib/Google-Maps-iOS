//
//  ViewController.swift
//  GoogleMaps Example
//
//  Created by Aaqib Hussain on 08/07/2015.
//  Copyright (c) 2015 Kode Snippets. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GMSMapViewDelegate {

    @IBOutlet weak var customView: GMSMapView!
    var marker = GMSMarker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setting up the Camera longitude and latitude on Sydney and displaying the map on Custom View
        let camera: GMSCameraPosition = GMSCameraPosition.cameraWithLatitude(-33.8650, longitude: 151.2094, zoom: 6.0)
        customView.camera = camera
        customView.delegate = self
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func creatMarker(coordinates: CLLocationCoordinate2D){
        
        marker.position = CLLocationCoordinate2DMake(coordinates.latitude, coordinates.longitude)
        marker.appearAnimation = kGMSMarkerAnimationNone
        marker.map = customView
    }
    //Moves marker around map
    func mapView(mapView: GMSMapView!, didTapAtCoordinate coordinate: CLLocationCoordinate2D) {
        creatMarker(coordinate)
    }
    
    //Hides marker on press
    func mapView(mapView: GMSMapView!, didTapMarker marker: GMSMarker!) -> Bool {
        marker.map = nil
        return true
        
    }
    

}

