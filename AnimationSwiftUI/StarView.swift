//
//  StarView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/6/23.
//

import SwiftUI

struct StarView: View {
    let rays: Int
    
    var body: some View {
        let angle = 360 / Double(rays)
        ZStack {
            ForEach(0..<rays, id: \.self) { iteration in
                SectorInCircleView(rays: rays)
                    .rotationEffect(.degrees(Double(iteration) * angle))
            }
//            Text("\(angle)")
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(rays: 9)
            .frame(width: 300, height: 300)
    }
}
