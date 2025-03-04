//
//  ContentView.swift
//  SwiftUISerisi
//
//  Created by Ahmet Tokucu on 23.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        HStack(spacing: 20) // Yatay hizalamaya yarar
        {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        }
        VStack(spacing: 50) // Dikey hizalamaya yarar
        {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Circle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
        }
        .padding()
        ZStack() // İç içe hizalamaya yarar
        {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}
