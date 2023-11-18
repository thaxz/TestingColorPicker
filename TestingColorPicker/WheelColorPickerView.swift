//
//  WheelColorPickerView.swift
//  TestingColorPicker
//
//  Created by thaxz on 18/11/23.
//

import SwiftUI

struct WheelColorPickerView: View {
    
    @State var selectedColorIndex: Int? = 10
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 1){
                Color.white
                    .aspectRatio(2, contentMode: .fit)
                ForEach(0..<21){ index in
                    ColorRow(hueValue: index)
                        .id(index)
                        .overlay{
                            if index == selectedColorIndex {
                                Rectangle()
                                    .stroke(.black, lineWidth: 3)
                            }
                        }
                        .zIndex(index == selectedColorIndex ? 100 : 1)
                }
                Color.white
                    .aspectRatio(2, contentMode: .fit)
            }
            .padding()
            //.scrollTargetLayout()
        }
        //.scrollPosition(id: $selectedColorIndex, anchor: .center)
        .aspectRatio(1, contentMode: .fit)
        HStack{
            Text("You selected:")
            if let selectedColorIndex {
                ColorRow(hueValue: selectedColorIndex)
            } else {
                Color.clear
            }
        }
        .frame(height: 100)
    }
}

struct WheelColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        WheelColorPickerView()
    }
}
