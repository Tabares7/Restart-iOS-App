//
//  HomeView.swift
//  Restart_2nd_class
//
//  Created by Front Desk  on 1/14/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: PROPS
    @AppStorage("onboarding") var isOnboardingViewActive:Bool = false
    @State private var isAnimating: Bool = false
    
        // MARK: BODY
    var body: some View {
        VStack(spacing: 20) {
            //MARK: HEADER
            Spacer()
            ZStack{
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(Animation
                        .easeOut(duration: 4)
                        .repeatForever()
                        , value: isAnimating)
                    
            }
            //MARK: CENTER
            VStack{
                Text("""
                    The time the leads to mastery is
                    dependent on the intensity on our focus.
                    """)
                .multilineTextAlignment(.center)
                .padding()
                .font(.system(.title3, design: .rounded ))
                .fontWeight(.light)
                .foregroundColor(.gray)
                
            }//: VSTACK
            Spacer()
            //MARK: FOOTER
            Button(action:{
                withAnimation {
                    isOnboardingViewActive = true
                }
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VSTACK
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                isAnimating = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
