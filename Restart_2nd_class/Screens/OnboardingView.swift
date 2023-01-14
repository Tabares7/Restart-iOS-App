//
//  OnboardingView.swift
//  Restart_2nd_class
//
//  Created by Front Desk  on 1/14/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            Color("purpleColor")
                  .ignoresSafeArea(.all, edges: .all)
            VStack (spacing: 20) {
                // MARK: - HEADER
                Spacer()
                
                VStack(spacing:0){
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                        It is not how much we give but
                        how much love we put into giving.
                        """)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .padding(.horizontal, 10)
                    
                }//: HEADER
                
                //MARK: - CENTER
                
                
                //MARK: - FOOTER
            }//: VSTACK
        }//: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
