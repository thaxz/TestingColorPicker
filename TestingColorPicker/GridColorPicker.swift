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
        VStack {
            ScrollView([.horizontal, .vertical]){
                LazyVGrid(columns: Array(repeating: GridItem(.fixed(colorSize), spacing: 0), count: 21), spacing: 0) {
                    ForEach(colorOptions) { color in
                        ZStack {
                            if color == selectedColor {
                                Rectangle()
                                    .fill(Color.white)
                                    .padding(-5)
                            }
                            Color(hue: color.hue, saturation: color.saturation, brightness: color.brightness)
                        }
                        .frame(height: colorSize)
                        .id(color)
                        .zIndex(color == selectedColor ? 100 : 1)
                    }
                }
                .padding(350)
                // .scrollTargetLayout()
            }
            // .scrollPosition(id: $selectedColor, anchor: .center)
            
            HStack{
                Text("Color selected:")
                if let selectedColor{
                    Color(hue: selectedColor.hue, saturation: selectedColor.saturation, brightness: selectedColor.brightness)
                        .frame(height: 20)
                    
                }
            }
            .onAppear{
                selectedColor = colorOptions[colorOptions.count / 2]
            }
        }
    }
}

struct GridColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        GridColorPicker()
    }
}
