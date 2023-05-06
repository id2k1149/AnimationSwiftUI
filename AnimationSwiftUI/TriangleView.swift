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
            let left = size * 0.1
            let right = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: left, y: size))
                path.addLine(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: right, y: size))
            }
            .fill(Color(.orange))
            .offset(x: 0, y: -size / 2)
        }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
            .frame(width: 100, height: 100)
    }
}
