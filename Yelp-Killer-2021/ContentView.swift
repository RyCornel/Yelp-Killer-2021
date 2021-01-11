//
//  ContentView.swift
//  Yelp-Killer-2021
//
//  Created by Ryan Cornel on 1/9/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var dishStore = DishStore()
    @State var newDish : String = ""
    @State var newSpot : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List(self.dishStore.dishes) { aDish in
                    Text(aDish.dish)
                    Text(aDish.spot)
                } .navigationTitle("Top Dishes Near You")
                searchBar
            }
        }
    }
    
    var searchBar: some View {
        HStack {
            TextField("Enter A Dish", text: self.$newDish)
                .padding()
            TextField("Enter The Venue", text: self.$newSpot)
            Button(action: self.addNewDish, label: {
                Text("Add")
                    .padding()
            })
            
        }
    }
    
    func addNewDish() {
        dishStore.dishes.append(Dish(id: String(dishStore.dishes.count + 1), dish: newDish, spot: newSpot))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

