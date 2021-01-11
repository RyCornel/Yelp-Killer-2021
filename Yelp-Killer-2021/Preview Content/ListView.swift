//
//  ListView.swift
//  Yelp-Killer-2021
//
//  Created by Ryan Cornel on 1/9/21.
//

import SwiftUI

struct ListView: View {
    var topDishes: [Dish]
    var body: some View {
        NavigationView{
            List(newDishes){
            Dish in DishView(eachDish: Dish)
        }.navigationBarTitle(Text("Top 5 Dishes Near You"))
        }
    }
}

struct DishView: View {
    var eachDish: Dish
    var body: some View {
                HStack() {
                    Image("waves")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                    Text(eachDish.dish)
                        .padding()
                    
                }
            }
            
        }

var newDishes = [
    Dish(id: 1, dish: "Burrito", spot:""),
    Dish(id: 2, dish: "Sushi", spot:""),
    Dish(id: 3, dish: "Burger", spot:""),
    Dish(id: 4, dish: "Pizza", spot:""),
    Dish(id: 5, dish: "Chowmein", spot:"")
]


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(topDishes: newDishes)
    }
}
