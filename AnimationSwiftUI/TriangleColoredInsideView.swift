//
//  NewTriangleView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/7/23.
//

import SwiftUI

struct TriangleColoredInsideView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: geometry.size.width / 2, y: 0))
                    path.addLine(to: CGPoint(x: geometry.size.width, y: geometry.size.height))
                    path.addLine(to: CGPoint(x: 0, y: geometry.size.height))
                    path.closeSubpath()
                }
                .stroke(Color.black, lineWidth: 8)
                .background(
                    TriangleShape()
                        .fill(Color.blue)
                )
                Path { path in
                    path.move(to: CGPoint(x: geometry.size.width / 2, y: 0))
                    path.addLine(to: CGPoint(x: geometry.size.width, y: geometry.size.height))
                    path.addLine(to: CGPoint(x: 0, y: geometry.size.height))
                    path.closeSubpath()
                }
                .stroke(Color.red, lineWidth: 4)
            }
        }
    }
}

struct TriangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.width / 2, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()
        return path
    }
}


struct NewTriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleColoredInsideView()
            .frame(width: 300, height: 300)
    }
}
