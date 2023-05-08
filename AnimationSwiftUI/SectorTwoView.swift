//
//  SectorView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/7/23.
//

import SwiftUI

struct SectorTwoView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let left = size * 0.13764
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle + left, y: size / 3))
                path.addLine(to: CGPoint(x: middle, y: size * 0.5))
                path.addLine(to: CGPoint(x: middle - left, y: size / 3))
                path.closeSubpath()
            }
            /*
            .fill(
                LinearGradient(
                    colors: [.red, .orange],
                    startPoint: .top,
                    endPoint: .center
                    )
            )
             */
            .stroke(Color.red, lineWidth: 1)
            
            
            
        }
    }
}

struct SectorTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SectorTwoView()
            .frame(width: 200, height: 200)
    }
}
