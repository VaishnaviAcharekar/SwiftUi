//
//  imageData.swift
//  fruitShopp
//
//  Created by user on 06/07/23.
//

import Foundation



struct fruitModel {
    
    var id: Int
    var title: fruitTitle
    var image: String
    var price: String
    var color: String
    
}

enum fruitTitle: String {
    
    case apple
    case apricot
    case avocado
    case banana
    case blackberry
    case cherry
    case dragonfruit
    case fig
    case grapes
    case kiwi
    case lemon
    case mango
    case muskmelon
    case orange
    case papaya
    case pear
    case pinepple
    case plum
    case raspberry
    case strawbery
    case watermelon
    
   
}
