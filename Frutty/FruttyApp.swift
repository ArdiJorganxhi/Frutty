//
//  FruttyApp.swift
//  Frutty
//
//  Created by Ardi Jorganxhi on 25.11.22.
//

import SwiftUI

struct isActive {
    
    @State var isActive: Bool = true
}

@main
struct FruttyApp: App {
    @AppStorage("onboarding", store : .standard) var isOnBoardingActive: Bool = true
    
    
    
    

    
    var body: some Scene {
        
        WindowGroup {
            
            
            if(isOnBoardingActive){
                
                OnBoardingView()
            }
            else{
                ContentView()
                
            }
            
           
        }
        
        
    }
      
}
    
