//
//  Triangle_3_View.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/7/23.
//

import SwiftUI

struct TriangleWithTwoBordersView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: geometry.size.width / 2, y: 4))
                    path.addLine(to: CGPoint(x: geometry.size.width - 3, y: geometry.size.height - 2) )
                    path.addLine(to: CGPoint(x: 3, y: geometry.size.height - 2))
                    path.closeSubpath()
                }
                .stroke(Color.green, lineWidth: 4)
                
                Path { path in
                    path.move(to: CGPoint(x: geometry.size.width / 2, y: 2))
                    path.addLine(to: CGPoint(x: geometry.size.width - 1, y: geometry.size.height - 1) )
                    path.addLine(to: CGPoint(x: 1, y: geometry.size.height - 1))
                    path.closeSubpath()
                }
                .stroke(Color.red, lineWidth: 2)
            }
        }
    }
}




struct Triangle_3_View_Previews: PreviewProvider {
    static var previews: some View {
        TriangleWithTwoBordersView()
            .frame(width: 350, height: 350)
    }
}
