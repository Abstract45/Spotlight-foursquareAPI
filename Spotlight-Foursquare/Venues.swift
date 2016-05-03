//
//  Venues.swift
//  Spotlight-Foursquare
//
//  Created by Miwand Najafe on 2016-05-02.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import Foundation
import SwiftyJSON
/*
 Rate limits are 5000 userless calls per hour -> each call inside a multi call will count as more than one call
 We can increase the # of calls by talking to them, but they recommend to sign the users because then you can do 500 requests per user instead. Also there
 results can be more personalized. 120k calls per day, if we sign them up through foursquare then we can get 12000/day for each user.
 
 You can also do multi call just seperate calls with a comma still have to include ll
 You can paginate using offset parameter
 
 For reference of parameters:
 https://developer.foursquare.com/docs/venues/explore
 */

struct Venues {
    private var _id: String! //id of the business can be used to get data by business
    private var _likes:String!
    private var _name:String! // gives the place name no need to format
    private var _photoURL:NSURL! // gives photo with ability to get different sizes - some can have featured photos
    private var _address:String! // can get formatted address
    private var _phoneNumber:String! // can get formatted phone number
    private var _lat: Double! // given as Double or float
    private var _long: Double! // given as Double or float
    private var _rating: Double! // based of a 10 rating system - gives a float value
    private var _usersCount:String!
    private var _websiteString:String!
    private var _placeComment:String! // add messagers name to it
    private var _reviewerName:String!
    private var _price:String! // not always available - gives you dollar signs
    private var _priceMessage:String! // not always availale - tells you if it is cheap etc.
    private var _status:String! // gives 0 or 1 depending on open or not, sometimes gives false or true instead of 0 or 1
    private var _statusMessage:String! // tells you when it is going to be open next
    private var _category:String! // gives category such as Breakfast spot - watch out for uniscalars
    private var _menuLink:String! // not always available
    private var _distance: String! //distance in meters

    var placeId:String {
        return _id
    }
    var likes:String {
        return _likes
    }
    var name:String {
        return _name
    }
    var placeAddress:String {
        return _address
    }
    var phoneNumber:String {
        return _phoneNumber
    }
    var coordinates: (lat:Double,long:Double) {
        return (_lat,_long)
    }
    var rating:Double {
        return _rating
    }
    var price:String {
        return _price
    }
    var priceMessage:String {
        return _priceMessage
    }
    var category:String {
        return _category
    }
    var menuLink: String {
        return _menuLink
    }
    var distance:String {
        return _distance
    }
    var status:String {
        return _status
    }
    var statusMessage:String {
        return _statusMessage
    }
    var reviewerName:String {
        return _reviewerName
    }
    var reviewMessage:String {
        return _placeComment
    }
    var photoURL:NSURL {
        return _photoURL
    }
    var userCount:String {
        return _usersCount
    }
    var websiteURLString:String {
        return _websiteString
    }
    
    init(json:JSON) {
        
    }
    
    


}