//
//  ListView.swift
//  Yelp-Killer-2021
//
//  Created by Ryan Cornel on 1/9/21.
//

import SwiftUI

struct ListView: View {
    @State var brandNewDish: String = ""
    
    var textInputField: some View {
        HStack {
            TextField("Enter A New Dish Here", text: self.$brandNewDish)
            TextField("Enter The Eatery", text: self.$brandNewDish)
        }
    }
    var topDishes: [Dish]
    
    
    var body: some View {
        NavigationView{
            List(newDishes){
            Dish in DishView(eachDish: Dish)
        }.navigationBarTitle(Text("Top 5 Dishes Near You"))
        }
        textInputField
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
                    Text(eachDish.spot)
                        .padding()
                }
            
            }
            
        }

    var newDishes = [
        Dish(id: 1, dish: "Burrito", spot:"Los Altos Taqueria"),
        Dish(id: 2, dish: "Sushi", spot:"Beyond Sushi"),
        Dish(id: 3, dish: "Burger", spot:"Veggie Grill"),
        Dish(id: 4, dish: "Pizza", spot:"Two Boots"),
        Dish(id: 5, dish: "Chowmein", spot:"Veggie Garden")
    ]


    struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(topDishes: newDishes)
    }
    }

