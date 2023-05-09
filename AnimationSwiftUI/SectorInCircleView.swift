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
            
            let angleCenterHalf = 180 / rays
            let sin36 = sin(Double(angleCenterHalf) * Double.pi / 180)
            let cos36 = cos(Double(angleCenterHalf) * Double.pi / 180)
            
            let angleTwo = (180 - angleCenter) / 2
            let tgAngleTwo = tan(Double(angleTwo) * Double.pi / 180)
            let sideA = middle / (tgAngleTwo + tgAngleCenter)
            
            let leftX = middle - sideA
            let middleY = sideA * tgAngleCenter
            let rightX = middle + sideA
            
            let littleR = size * 0.190983
            let sideA_2 = littleR * sin36
            let sideB_2 = littleR * cos36
            
            let leftX_2 = middle - sideA_2
            let middleY_2 = middle - sideB_2
            let rightX_2 = middle + sideA_2
            
            
            
            VStack {
//                Text("\(size)")
//                Text("\(middle)")
//                Text("\(angleCenter)")
//                Text("\(angleCenterHalf)")
//                Text("\(sin36)")
//                Text("\(tgAngleTwo)")
//                Text("\(sideA)")
//                Text("\(littleR)")
//                Text("\(sideA_2)")
                
            }
            
            ZStack {
                Circle()
                    .stroke(Color.red, lineWidth: 1)
                
//                Circle()
//                    .frame(width: littleR * 2)
//                    .foregroundColor(.white)
//                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    
                
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: 0))
                    path.addLine(to: CGPoint(x: rightX, y: middleY))
                    path.addLine(to: CGPoint(x: middle, y: middle))
                    path.addLine(to: CGPoint(x: leftX, y: middleY))
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
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: 0))
                    path.addLine(to: CGPoint(x: rightX_2, y: middleY_2))
                    path.addLine(to: CGPoint(x: middle, y: middle))
                    path.addLine(to: CGPoint(x: leftX_2, y: middleY_2))
                    path.closeSubpath()
                }
                .stroke(Color.black, lineWidth: 1)
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
