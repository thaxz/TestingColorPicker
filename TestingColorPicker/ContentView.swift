//
//  ContentView.swift
//  TestingColorPicker
//
//  Created by thaxz on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var color: Color = .red
    var body: some View {
        VStack {
            
            ColorPicker("Pick a color", selection: $color)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
