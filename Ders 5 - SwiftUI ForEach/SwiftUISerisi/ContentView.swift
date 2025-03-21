//
//  ContentView.swift
//  SwiftUISerisi
//
//  Created by Ahmet Tokucu on 23.02.2025.
//

import SwiftUI

struct Book: Identifiable {
    var id: UUID = UUID()
    var Title: String
    var author: String
    var published: String
}

struct ContentView: View {
    
    let books: [Book] = [
        Book(Title: "The Alchemist", author: "Paulo Coelho", published: "10 Mayıs 2001"),
        Book(Title: "1984", author: "George Orwell", published: "11 Haziran 2008"),
        Book(Title: "To Kill a Mockingbird", author: "Harper Lee", published: "12 Aralık 2009") ]
    var body: some View {
       
        List {
            ForEach(books) { book in
                HStack{
                    Image(systemName: "book")
                        .foregroundColor(.blue)
                    VStack(alignment: .leading){
                        Text("Kitap Adı: \(book.Title)")
                            .font(.headline)
                            Text("Kitap Yazarı: \(book.author)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            Text("Kitap Yayınlanma Tarihi: \(book.published)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
