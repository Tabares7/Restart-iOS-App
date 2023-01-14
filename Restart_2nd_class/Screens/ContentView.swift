//
//  ContentView.swift
//  Restart_2nd_class
//
//  Created by Front Desk  on 1/14/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPS
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: BODY
    var body: some View {
        ZStack{
            if isOnboardingViewActive{
                OnboardingView()
            }else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
