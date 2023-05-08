//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Max Franz Immelmann on 5/6/23.
//

import SwiftUI

struct ContentView: View {
//    @State private var rays = Int.random(in: 3...12)
    @State private var stringValue = ""
    
    var body: some View {
        let randomInt = Int.random(in: 3...12)
        VStack {
            Text("Enter a number from 3 to 12")
                .font(.title)
                .padding(.all, 6.0)
            TextField("3...12", text: $stringValue)
                .frame(width: 60, height: 30.0)
            ButtonView(title: "How to draw",
                       action: {},
                       rays: Int(stringValue) ?? randomInt)
            Spacer()
            StarView(rays: Int(stringValue) ?? randomInt)
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
