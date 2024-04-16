//
//  HomeViewModel.swift
//  SmartFood
//
//  Created by jay kumbhani on 07/04/24.
//

import Foundation

class HomeViewModel {
    
    let imgArr = ["Restaurant 4","Restaurant 2","Restaurant 3","Restaurant 1","Restaurant 5","Restaurant 6","Restaurant 7"]
//    let menuArr = ["Menu 1", "Menu 2", "Menu 3", "Menu 4", ]
    
    var menuArr = [MenuModel(itemName: "Green Noddle", itemImg: "Menu 1", itemHotelName: "Noodle Home", itemPrice: "$15"),
                   MenuModel(itemName: "Herbal Pancake", itemImg: "Menu 2", itemHotelName: "Warung Herbal", itemPrice: "$9"),
                   MenuModel(itemName: "Green Bhaji", itemImg: "Menu 3", itemHotelName: "Wijie Resto", itemPrice: "$7.89"),
                   MenuModel(itemName: "Fruit Salad", itemImg: "Menu 4", itemHotelName: "Noodle Gini", itemPrice: "$51"),
                   MenuModel(itemName: "Spacy fresh crab", itemImg: "Menu 5", itemHotelName: "Waroenk kita", itemPrice: "$3"),
                   MenuModel(itemName: "French fries", itemImg: "Menu 6", itemHotelName: "Golmag Jina", itemPrice: "$4"),
                   MenuModel(itemName: "Frenky", itemImg: "Menu 7", itemHotelName: "Wendy's", itemPrice: "$3.50"),
    ]
    
}


struct MenuModel {
    var itemName: String?
    var itemImg: String?
    var itemHotelName: String?
    var itemPrice: String?
}
