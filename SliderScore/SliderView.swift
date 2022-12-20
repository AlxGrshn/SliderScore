//
//  SliderView.swift
//  SliderScore
//
//  Created by Alexander Grishin on 20.12.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var currentValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha : Int
    
    var body: some View {
        VStack {
            Text("Двигай слайдер как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                UIKitSlederView(value: $currentValue, alpha: alpha, color: color)
                Text("100")
            }
            .padding()
        }
    }
}

struct UISliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(currentValue: .constant(50), targetValue: 50, color: .green, alpha: 100)
    }
}
