//
//  FructusApp.swift
//  Fructus
//
//  Created by Rashid on 05/11/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
                OnboardingView()
            
            }else{
               ContentView()
            }
         
        }
    }
}
