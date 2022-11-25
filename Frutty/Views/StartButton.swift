//
//  StartButton.swift
//  Frutty
//
//  Created by Ardi Jorganxhi on 25.11.22.
//

import SwiftUI

struct StartButton: View {
    @AppStorage("onboarding") var isOnBoardingActive: Bool?
    @State private var active: Bool = false
  
    var body: some View {
        
            
                Button(action: {
                    
                    
                    isOnBoardingActive = false
                    
                })
                {
                    HStack(spacing: 8) {
                        Text("Start")
                        Image(systemName: "arrow.right.circle")
                            .imageScale(.large)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(
                        Capsule()
                            .strokeBorder(.white, lineWidth: 1.25)
                    )
                }
            .accentColor(.white)
                
                if(active){
                    NavigationStack{
                        
                        NavigationLink(destination: ContentView()){
                            
                            // no actions
                        }
                    }
                }
         
    }
        
        
}
    

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            
    }
}
