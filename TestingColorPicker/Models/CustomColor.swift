//
//  CustomColor.swift
//  TestingColorPicker
//
//  Created by thaxz on 18/11/23.
//

import Foundation

struct CustomColor: Identifiable, Hashable {
    
    let hue: CGFloat
    let saturation: CGFloat
    let brightness: CGFloat
    let id = UUID()
    
    static func spectrum() -> [CustomColor]{
        let brightnessDistance = 0.1
        let hueDistance = 0.05
        
        let brightnessValues = Array(stride(from: 0.0, through: 1.0, by: brightnessDistance))
        let hueValues =  Array(stride(from: 0.0, through: 1.0, by: hueDistance))
        
        var results = [CustomColor]()
        for hueValue in hueValues {
            let row = brightnessValues.map { CustomColor(hue: hueValue, saturation: 1, brightness: $0)
            }
            results.append(contentsOf: row)
            let rowEnd  = brightnessValues.map { CustomColor(hue: hueValue, saturation: $0, brightness: 1)
            }.reversed().dropFirst()
            results.append(contentsOf: row)
        }
        
        return results
    }
    
}
