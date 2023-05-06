//
//  TriangleView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/6/23.
//

import SwiftUI

struct TriangleView: View {
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
            }
//            .fill(Color(.orange))
            .fill(
                LinearGradient(
                    colors: [.red, .black],
                    startPoint: .top,
                    endPoint: .bottom
                    )
            )
            .offset(x: 0, y: -size / 2)
        }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
            .frame(width: 240, height: 240)
    }
}
