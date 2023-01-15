//
//  CircleGroupView.swift
//  Restart_2nd_class
//
//  Created by Front Desk  on 1/14/23.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: PROPS
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    // MARK: BODY
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//: ZSTACK
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("purpleColor")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
