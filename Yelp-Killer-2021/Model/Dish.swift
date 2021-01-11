//
//  Dish.swift
//  Yelp-Killer-2021
//
//  Created by Ryan Cornel on 1/9/21.
//

import SwiftUI
import Combine

struct Dish: Identifiable {
    var id: Int
    var dish: String
    var spot: String
    
}

class DishStore : ObservableObject {
    @Published var dishes = [Dish]()
}
