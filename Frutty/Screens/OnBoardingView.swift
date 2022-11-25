//
//  OnBoardingView.swift
//  Frutty
//
//  Created by Ardi Jorganxhi on 25.11.22.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitsData
    var body: some View {
        
            
            TabView{
           
                ForEach(fruits[0...5]) {
                    item in FruitCard(fruit: item)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .tabViewStyle(PageTabViewStyle())
            .edgesIgnoringSafeArea(.all)
            
                
        
       
    }
    
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
