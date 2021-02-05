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
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    struct Dishes {
        let dish: String
        let venue: String
        
        init(dish: String, venue: String) {
            self.dish = dish
            self.venue = venue
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
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
                    
                    
                    Button(action: {voteUp()}, label: {
                            Text("Vote Up")
                            Text(" \(posCount) Likes")
                    })
                    }
                     .navigationTitle("Top Dishes Near You")
                                    searchBar
            } 
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
        dishStore.dishes.append(Dish(id: Int(dishStore.dishes.count + 1), dish: newDish, spot: newSpot))
        self.posCount = 0
        self.newDish = ""
        self.newSpot = ""
        
    }
    
    func voteUp() {
        posCount += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

