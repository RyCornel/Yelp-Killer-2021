//
//  ListView.swift
//  Yelp-Killer-2021
//
//  Created by Ryan Cornel on 1/9/21.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        DishView()
    }
}

struct DishView: View {
            var body: some View {
                HStack() {
                    Image("waves")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                    Text("Hello, world!")
                        .padding()
                    
                }
                HStack() {
                    Image("waves")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                    Text("Hello, world!")
                        .padding()
                }
                HStack() {
                    Image("waves")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                    Text("Hello, world!")
                        .padding()
                }
                HStack() {
                    Image("waves")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                    Text("Hello, world!")
                        .padding()
                }
                HStack() {
                    Image("waves")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                    Text("Hello, world!")
                        .padding()
                }
            }
            
        }

var newDishes = [
    Dish(id: 1, name: "Burrito")
    Dish(id: 2, name: "Sushi")
    Dish(id: 3, name: "Burger")
    Dish(id: 4, name: "Pizza")
    Dish(id: 5, name: "Chowmein")
]


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
