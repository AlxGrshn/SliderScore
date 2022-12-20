//
//  ContentView.swift
//  SliderScore
//
//  Created by Alexander Grishin on 20.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue = Double.random(in: 0...100)
    @State private var targetValue = Int.random(in: 1...100)
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            SliderView(
                currentValue: $currentValue,
                targetValue: targetValue,
                color: .red,
                alpha: computedScore()
            )
            
            Button("Проверь меня!") {
                showAlert.toggle()
            }
            .padding()
            .alert(
                "Ваш результат",
                isPresented: $showAlert,
                actions: {}
            ) {
                Text(computedScore().formatted())
            }
            
            Button("Начать заново") {
                currentValue = Double.random(in: 0...100)
                targetValue = Int.random(in: 1...100)
            }
        }
    }
    
    private func computedScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
