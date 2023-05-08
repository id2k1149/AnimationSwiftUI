//
//  StarView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/6/23.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        let rays = 12
        let angle = 360 / rays
        ZStack {
            ForEach(0..<rays, id: \.self) { iteration in
               SectorInCircleView()
                    .rotationEffect(.degrees(Double(iteration * angle)))
            }
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
            .frame(width: 300, height: 300)
    }
}
