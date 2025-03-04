//
//  ContentView.swift
//  SwiftUISerisi
//
//  Created by Ahmet Tokucu on 23.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .foregroundColor(.green)
            .padding()
            .background(Color.yellow)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 4)
            )
            .padding()
        
    }
}

#Preview {
    ContentView()
}
