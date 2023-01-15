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
    
        // MARK: BODY
    var body: some View {
        VStack(spacing: 20) {
            //MARK: HEADER
            Spacer()
            ZStack{
                Circle()
                    .stroke(.gray.opacity(0.1), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                Circle()
                    .stroke(.gray.opacity(0.1), lineWidth: 80)
                    .frame(width: 260, height: 260)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
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
            ZStack{
                Capsule()
                    .fill(Color("purpleColor"))
                    .frame( width: 150,height: 55)
                HStack{
                    Image(systemName: "chevron.left.circle")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    Text("Restart")
                        .foregroundColor(.white)
                        .font(.system(size: 22, design: .rounded))
                        .fontWeight(.bold)
                }//: HSTACK
            } //: ZSTACK
            .onTapGesture {
                isOnboardingViewActive = true
            }
        }//: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
