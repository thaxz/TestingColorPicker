//
//  GridColorPicker.swift
//  TestingColorPicker
//
//  Created by thaxz on 18/11/23.
//

import SwiftUI

struct GridColorPicker: View {
    
    @State private var selectedColor: CustomColor? = nil
    let colorSize: CGFloat = 30
    
    let colorOptions = CustomColor.spectrum()
    var body: some View {
        ScrollView([.horizontal, .vertical]){
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(colorSize), spacing: 0), count: 21), spacing: 0) {
                ForEach(colorOptions) { color in
                    Color(hue: color.hue, saturation: color.saturation, brightness: color.brightness)
                        .frame(height: colorSize)
                }
            }
        }
    }
}

struct GridColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        GridColorPicker()
    }
}
