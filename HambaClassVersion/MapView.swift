//
//  MapView.swift
//  HambaClassVersion
//
//  Created by Thomas Frey on 02.04.22.
//

import Foundation
import MapKit
import SwiftUI
import UIKit

struct MapView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let map = MKMapView()
        
        //defining initial view properties
        let region = CLLocationCoordinate2D(latitude: 52.520008, longitude: 13.411000)
        let standardSpan = MKCoordinateSpan(latitudeDelta: 0.09, longitudeDelta: 0.09)
        
        view.addSubview(map)
        
        //modifying the map
        map.translatesAutoresizingMaskIntoConstraints = false
        map.setRegion(MKCoordinateRegion(center: region, span: standardSpan), animated: true)
        
        //Auto-Layout Constraints
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        return view
    }
    
    //not quite sure what this does
    func updateUIView(_ uiView: UIView, context: Context) {
        //do nothing
    }
    
}

