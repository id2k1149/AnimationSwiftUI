//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Enter a number from 3 to 12")
                .font(.title)
                .padding(.all, 6.0)
            TextField("3...12", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 30.0)
            ButtonView(title: "How to draw",
                       action: {},
                       rays: 5)
            Spacer()
            StarView(rays: 5)
                .frame(width: 300, height: 300)
                .overlay(Circle().stroke(lineWidth: 1))
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
