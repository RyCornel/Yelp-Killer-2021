//
//  ContentView.swift
//  Yelp-Killer-2021
//
//  Created by Ryan Cornel on 1/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DishView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

struct DishView: View {
            var body: some View {
                HStack() {
                    Image("waves")
                        .resizable()
                        .frame(width: 55.0, height: 55.0)
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
