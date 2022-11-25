//
//  FruitDetailView.swift
//  Frutty
//
//  Created by Ardi Jorganxhi on 25.11.22.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20.0){
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20.0) {
                       
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        FruitNutritionView(fruit: fruit)
                            
                        Text("Learn more about \(fruit.title)")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
