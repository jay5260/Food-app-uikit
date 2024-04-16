//
//  StoryboardInstantiable.swift
//  SmartFood
//
//  Created by jay kumbhani on 07/04/24.
//

import Foundation
import UIKit


protocol StoryboardInstantiable: AnyObject {
    static var storyboardName: String { get }
    static var identifier: String { get }
    static func instantiate() -> Self
}

extension StoryboardInstantiable {
    
    static var identifier: String {
        String(describing: Self.self)
    }
    
    private static var storyboard: UIStoryboard {
        UIStoryboard(name: Self.storyboardName, bundle: nil)
    }
    
    /// Instantiates view controller with the specified identifier.
    /// Unless specified it will take the **identifier** as the class name.
    static func instantiate() -> Self {
        storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}




enum StoryboardNames {
    case main
    case homeScreen
    case restaurantPage
    case privateProfile

    var name: String {
        switch self {
        case .main:
            return "Main"
        case .homeScreen:
            return "HomeScreen"
        case .restaurantPage:
            return "RestaurantPage"
        case .privateProfile:
            return "PrivateProfile"
         }
    }
}
