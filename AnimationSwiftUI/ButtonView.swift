//
//  ButtonView.swift
//  DataFlowSwiftUI
//
//  Created by Max Franz Immelmann on 4/21/23.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        VStack {
            Button(action: action) {
                
                HStack {
                    StarView()
                        .padding(.all, 5)
                        .frame(width: 60, height: 60)
                    
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.trailing, 6)
                }
            }
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 4)
            )
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "TapMe",
                   color: .blue,
                   action: {})
    }
}
