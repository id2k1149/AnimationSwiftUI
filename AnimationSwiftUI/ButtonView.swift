//
//  ButtonView.swift
//  DataFlowSwiftUI
//
//  Created by Max Franz Immelmann on 4/21/23.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    let rays: Int
    
    var body: some View {
        VStack {
            Button(action: action) {
                
                HStack {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.trailing, 6)
                    
                    StarView(rays: rays)
                        .padding(.all, 5)
                        .frame(width: 50, height: 50)
                }
            }
            .frame(width: 300, height: 60)
            .background(.blue)
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
        ButtonView(title: "How to draw ",
                   action: {},
                   rays: 5)
    }
}
