//
//  ContentView.swift
//  SwiftUISerisi
//
//  Created by Ahmet Tokucu on 23.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Home(locations: "Kars", squareMeters: 150, payment: 1000000, person: "Kayra")
                .padding()
            Home(locations: "Kayseri", squareMeters: 100, payment: 5600000, person: "Emir")
                .padding()
        }
        .padding()
    }
}

struct Home: View {
    
    var locations: String
    var squareMeters: Int
    var payment: Int
    var person: String
    
    init(locations: String, squareMeters: Int, payment: Int, person: String) {
        self.locations = locations
        self.squareMeters = squareMeters
        self.payment = payment
        self.person = person
    }
    
    
    
    var body: some View {
        VStack {
            Text("Konum: \(locations)")
            Text("Büyüklük: \(squareMeters) m²")
            Text("Fiyat: \(payment) TL")
                .padding(.bottom, 10)
            Text("Satıcı: \(person)")
                .font(.caption)
                .foregroundColor(.yellow)
        }
        .padding()
        .background(.red)
        .cornerRadius(20)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
