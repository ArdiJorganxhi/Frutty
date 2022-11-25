//
//  FruitNutritionView.swift
//  Frutty
//
//  Created by Ardi Jorganxhi on 26.11.22.
//

import SwiftUI

struct FruitNutritionView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox(){
            
            DisclosureGroup("Nutritional value per 100g"){
                
                ForEach(0..<nutrients.count, id: \.self){
                    item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body).bold()
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }
        
    }
}

struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
    }
}
