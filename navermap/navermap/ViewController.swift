//
//  ViewController.swift
//  navermap
//
//  Created by 김혜란 on 1/4/24.
//

import UIKit
import NMapsMap


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
        
    }
}

