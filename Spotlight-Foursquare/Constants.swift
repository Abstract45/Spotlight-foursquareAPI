//
//  Constants.swift
//  Spotlight-Foursquare
//
//  Created by Miwand Najafe on 2016-05-02.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import Foundation

typealias FSqData = [Venues] -> ()

let URL_BASE = "https://api.foursquare.com/v2/"
let URL_EXPLORE = "venues/explore?"
let CLIENT_SECRET = "YBIUPUO2TK3G3Y1VA4GVMGEZF3SGH2U3XLIU1OLWTWD14B5V"
let CLIENT_ID = "INBM5ZECLMQ3V5NMWPCUUWSW0I00MDBY5HH55MPZ3HEBJXH4"
let API_VERSION = "20160415"

enum OpenType:Int {
    case All = 0
    case OpenOnly
}