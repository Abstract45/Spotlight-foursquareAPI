//
//  Client.swift
//  Spotlight-Foursquare
//
//  Created by Miwand Najafe on 2016-05-02.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import Foundation
import SwiftyJSON
/*
 Search with location allows you to get data in explore mode.
 Reference to additional parameters - https://developer.foursquare.com/docs/venues/explore
 The defaults are:
 limit = 50
 radius -> Based on the density of venues found so it changes
 venue photos set to 1 to give atleast one photo if available
 open-now -> 1 - It will only return places that are open now
 Meta Category list -> Arts & Entertainment, College & University, Event, Food, Nightlife Spot, Outdoors & Recreation, Professional & Other Places, Residence, Shop & Service, Travel & Transport
 
 
 */

class Client {
    
    
    static let instance = Client()
    private init () {}
    func searchWithTerm(term:String,ll:(lat:Double, long:Double), offset:Int, open:OpenType,completion:FSqData) -> () {
        let url = NSURL(string: "\(URL_BASE)\(URL_EXPLORE)ll=\(ll.lat),\(ll.long)&venuePhotos=1&client_id=\(CLIENT_ID)&client_secret=\(CLIENT_SECRET)&limit=50&open=\(open.rawValue)&query=\(term)&offset=\(offset)&v=\(API_VERSION)")
        let session = NSURLSession.sharedSession()
        
        session.dataTaskWithURL(url!) { (data, response, error) in
            
            
            if error == nil {
                do {
                    let dict = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? NSDictionary
                    print(dict)
                } catch let err as NSError {
                    print(err.debugDescription)
                }
            } else {
                print(error)
            }
            }.resume()
    }
    func searchWithCategory(category:[String],ll:(lat:Double,long:Double), offset:Int, open:OpenType,completion:FSqData) -> () {
        let sections = category.joinWithSeparator(",")
        let url = NSURL(string: "\(URL_BASE)\(URL_EXPLORE)ll=\(ll.lat),\(ll.long)&venuePhotos=1&client_id=\(CLIENT_ID)&client_secret=\(CLIENT_SECRET)&section=\(sections)&limit=50&open=\(open.rawValue)&offset=\(offset)&v=\(API_VERSION)")
        
        let session = NSURLSession.sharedSession()
        guard let sessionURL = url else {
            print("is nil")
            return
        }
        session.dataTaskWithURL(sessionURL) { (data, response, error) in
            
            
            if error == nil {
                do {
                    let dict = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? NSDictionary
                    print(dict)
                } catch let err as NSError {
                    print(err.debugDescription)
                }
            } else {
                print(error)
            }
            }.resume()
    }
}