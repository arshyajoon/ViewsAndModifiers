//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Arshya GHAVAMI on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .titleStyle()
            .padding()
            .background(Color.red)
            .padding()
            .background(Color.blue)
            .padding()
            .background(Color.green)
            .padding()
            .background(Color.yellow)
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}
extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
