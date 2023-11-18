//
//  WheelPicker.swift
//  TestingColorPicker
//
//  Created by thaxz on 18/11/23.
//

import SwiftUI

struct ColorRow: View {
    let hueValue: Int
    let numberOfColorStops: Int = 20
    var body: some View {
        Color(hue: Double(hueValue)/Double(numberOfColorStops), saturation: 1, brightness: 1)
            .frame(height: 20)
    }
}

struct ColorRow_Previews: PreviewProvider {
    static var previews: some View {
        ColorRow(hueValue: 20)
    }
}
