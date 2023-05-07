//
//  SectorView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/7/23.
//

import SwiftUI

struct SectorView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let left = size * 0.137
            let right = size - left
            
            Path { path in
                path.move(to: CGPoint(x: left, y: size))
                path.addLine(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: right, y: size))
                path.addLine(to: CGPoint(x: middle, y: size * 1.5))
                path.closeSubpath()
            }
            .fill(
                LinearGradient(
                    colors: [.red, .orange],
                    startPoint: .top,
                    endPoint: .bottom
                    )
            )
            .offset(x: 0, y: -size)
        }
    }
}

struct SectorView_Previews: PreviewProvider {
    static var previews: some View {
        SectorView()
            .frame(width: 200, height: 200)
    }
}
