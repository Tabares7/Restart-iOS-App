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
                ZStack {
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }//: CENTER
                
                Spacer()
                
                //MARK: - FOOTER
                ZStack{
                    //PARTS OF THE CUSTOM BUTTOM
                    
                    // 1. BACKGROUND (STATIC)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                        
                    // 2. CALL-TO-ACTION (STATIC)
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .offset(x:10)
                    // 3. CAPSULE (DINAMIC WIDTH)
                    HStack{
                        Capsule()
                            .fill(Color("yellowColor"))
                            .frame(width:80)
                        Spacer()
                    }//: HSTACK
                    
                    // 4. CIRCLE (DRAGGABLE)
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("yellowColor"))
                            Circle()
                                .fill(Color.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }//: ZSTACK
                        .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                    .onTapGesture {
                        isOnboardingViewActive = false
                    }
                        
                        Spacer()
                    }//: HSTACK
                }//: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            }//: VSTACK
        }//: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
