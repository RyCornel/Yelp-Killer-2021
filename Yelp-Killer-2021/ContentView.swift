//
//  ContentView.swift
//  Yelp-Killer-2021
//
//  Created by Ryan Cornel on 1/9/21.
//

import SwiftUI
import Combine
import MapKit
import CoreLocation

struct ContentView: View {
    @ObservedObject var dishStore = DishStore()
    @State var newDish : String = ""
    @State var newSpot : String = ""
    @State var posCount : Int = 0
    @State var negCount : Int = 0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(self.dishStore.dishes) { aDish in
                    Text(aDish.dish)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .scaledToFill()
                    Text(aDish.spot)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .scaledToFill()
                    Text("Likes")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .scaledToFill()
                    VStack {
                        Button(action:
                                {self.posCount += 1}, label: {
                                    Text("Vote Up \(posCount)")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                        .multilineTextAlignment(.leading)
                                        .scaledToFit()
                                })
                        /*Button(action:
                                {self.negCount -= 1}, label: {
                                    Text("Vote Down")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                        .multilineTextAlignment(.leading)
                                        .scaledToFill()
                                }) */
                    }
                    }
 .navigationTitle("Top Dishes Near You")
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
        
        self.newDish = ""
        self.newSpot = ""
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

