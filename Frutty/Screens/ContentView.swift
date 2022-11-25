//
//  ContentView.swift
//  Frutty
//
//  Created by Ardi Jorganxhi on 25.11.22.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationStack{
           
            List {
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        
                        FruitCardRowView(fruit: fruit)
                            .padding(.vertical, 4)
                        
                    }
                   
                }
            }
            .navigationTitle("Fruits")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

