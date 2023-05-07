//
//  StarWithBorderView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/7/23.
//

import SwiftUI

struct StarWithBorderView: View {
    var body: some View {
        StarView()
            .opacity(0.2)
            .foregroundColor(Color("aqua"))
    }
}

struct StarWithBorderView_Previews: PreviewProvider {
    static var previews: some View {
        StarWithBorderView()
            .frame(width: 100, height: 100)
    }
}
