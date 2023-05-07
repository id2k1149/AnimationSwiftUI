//
//  StarRaysView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/7/23.
//

import SwiftUI

struct StarRaysView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.blue)
            
            ZStack {
                ForEach(0..<5) { iteration in
                    SectorView()
                        .rotationEffect(.degrees(Double(iteration * 72)))
                }
            }
        }
    }
}

struct StarRaysView_Previews: PreviewProvider {
    static var previews: some View {
        StarRaysView()
            .frame(width: 160, height: 60)
    }
}
