//
//  ViewController.swift
//  Spotlight-Foursquare
//
//  Created by Miwand Najafe on 2016-05-02.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import UIKit

//  Toronto Coordinate: 43.6532° N, 79.3832

class ViewController: UIViewController {
    let category = ["Arts_&_Entertainment","Food","Nightlife_Spot","Outdoors_&_Recreation"]
    let fSqClient = Client.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        fSqClient.searchWithTerm("parks", ll: (43.6532,-79.3832), offset: 0, open: .All) { (venues) in
//        }
        
//        fSqClient.searchWithCategory(category, ll: (43.6532,-79.3832), offset: 0, open: .All) { (venues) in
//        }
    }
}

