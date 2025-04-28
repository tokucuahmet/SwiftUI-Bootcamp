//
//  ContentView.swift
//  SwiftUISerisi
//
//  Created by Ahmet Tokucu on 23.02.2025.
//
import SwiftUI

struct InstagramPostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: "circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                VStack{
                    Text("Ahmet Tokucu")
                        .font(.headline)
                    Text("SwiftUI Serisi")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            AsyncImage(url: URL(string: "https://picsum.photos/400/390"))
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: 300)
                .padding(.bottom, 50)
                .padding(.top, 50)
            
            HStack{
                Image(systemName: "heart")
                Text("2.251")
                Image(systemName: "message")
                Text("39")
                Image(systemName: "paperplane")
                Text("60")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(5)
            HStack{
                Text("tokucuahmet")
                    .font(.subheadline)
                    .bold(true)
                Text("Çok güzel etkinlik idi <3")
                    .font(.subheadline)
            }
            .padding(5)
            Text("Tüm Yorumları Görüntüle")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Text("Bende gitmek istiyorum...")
                .font(.subheadline)
                .padding(.horizontal)
            Text("10 dakika önce")
                .font(.caption)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
                .padding(.vertical, 5)
        }
    }
}

struct ContentView: View {
    

    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                ForEach(0..<20) { _ in
                    InstagramPostView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
