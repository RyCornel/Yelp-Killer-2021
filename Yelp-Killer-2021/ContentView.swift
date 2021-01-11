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
    
    var body: some View {
        NavigationView {
            VStack {
                List(self.dishStore.dishes) { aDish in
                    Text(aDish.dish)
                } .navigationTitle("Top 5 Dishes Near You")
                searchBar
            }
        }
    }
    
    var searchBar: some View {
        HStack {
            TextField("Enter A New Dish", text: self.$newDish)
            TextField("Enter The Venue", text: self.$newDish)
            Button(action: self.addNewDish, label: {
                Text("Add")
            })
            
        }
    }
    
    func addNewDish() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

