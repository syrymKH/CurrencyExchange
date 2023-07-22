//
//  MapView.swift
//  myCurrencyExchangeApp
//
//  Created by Syrym Khamzin on 16.03.2023.
//

import UIKit
import MapKit

class MapView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addToView()
    }
    
    func addToView() {
        let currencyExchangeMap = MKMapView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        
        view.addSubview(currencyExchangeMap)
        
        let center = CLLocationCoordinate2D(latitude: 43.2324685, longitude: 76.8870117)
        let span = MKCoordinateSpan(latitudeDelta: 0.125, longitudeDelta: 0.125)
        let region = MKCoordinateRegion(center: center, span: span)
        currencyExchangeMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 43.2324685, longitude: 76.8870117)

        annotation.title = "Currency Exchange Office"
        annotation.subtitle = "Hours of Operation 24/7"
        currencyExchangeMap.addAnnotation(annotation)
    }
}
