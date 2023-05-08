//
//  SectorInCircleView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/7/23.
//

import SwiftUI

struct SectorInCircleView: View {
    let rays: Int
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
           
            let angleCenter = 360 / rays
            let tgAngleCenter = tan(Double(angleCenter) * Double.pi / 180)
            let angleTwo = (180 - angleCenter) / 2
            let tgAngleTwo = tan(Double(angleTwo) * Double.pi / 180)
            let value = middle / (tgAngleTwo + tgAngleCenter)
            
            ZStack {
//                Circle()
//                    .stroke(Color.red, lineWidth: 1)
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: 0))
                    path.addLine(to: CGPoint(x: middle + value, y: value * tgAngleCenter))
                    path.addLine(to: CGPoint(x: middle, y: middle))
                    path.addLine(to: CGPoint(x: middle - value, y: value * tgAngleCenter))
                    path.closeSubpath()
                }
//                .stroke(Color.red, lineWidth: 1)
                            .fill(
                                LinearGradient(
                                    colors: [.orange, .red],
                                    startPoint: .top,
                                    endPoint: .center
                                    )
                            )
            }
        }
    }
}

struct SectorInCircleView_Previews: PreviewProvider {
    static var previews: some View {
        SectorInCircleView(rays: 5)
            .frame(width: 300, height: 300)
    }
}
