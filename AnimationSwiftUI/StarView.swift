//
//  StarView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/6/23.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        ZStack {
            ForEach(0..<5) { iteration in
                TriangleView()
                    .rotationEffect(.degrees(Double(iteration * 72)))
            }
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
            .frame(width: 180, height: 180)
    }
}
