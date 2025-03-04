//
//  ContentView.swift
//  SwiftUISerisi
//
//  Created by Ahmet Tokucu on 23.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        Rectangle() // Dikdörtgen & Kare oluşturma
                    .fill(Color.blue) // Renk ekleme
                    .frame(width: 200, height: 200) // Boyut belirleme
                    .cornerRadius(20) // Köşe yuvarlama
                    .shadow(radius: 10) // Gölge ekleme
                    .padding()
        
        Circle() // Daire oluşturma
                    .fill(Color.green) // Dairenin rengi
                    .frame(width: 150, height: 150) // Çap ayarlama
                    .overlay( // Mevcut view'in üzerine başka bir view yerleştirir.
                        Text("SwiftUI Öğreniyorum")
                            .foregroundColor(.black) // Metnin rengi
                            .font(.headline)
                    )
                    .padding()
        
        RoundedRectangle(cornerRadius: 25) // Yuvarlatılmış dikdörtgen oluşturma
                    .fill(Color.orange)
                    .frame(width: 200, height: 100)
                    .overlay(
                        Text("SwiftUI Shapes")
                            .foregroundColor(.white)
                            .font(.title)
                    ) // Metin ekleme
                    .shadow(radius: 5) // Gölge ekleme
                    .padding()
        
        Ellipse() // Elips oluşturma
                    .fill(Color.purple)
                    .frame(width: 250, height: 150) // Elipsin boyutları
                    .shadow(radius: 8)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                            .padding(5)
                            .position(x: 125, y: 75)
                    )
                    .overlay(
                        Text("SwiftUI Shapes")
                            .foregroundColor(.white)
                            .background(Color.black)
                    )
    }
}

#Preview {
    ContentView()
}
