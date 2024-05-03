//
//  ContentView.swift
//  FunnyTextApp
//
//  Created by Nikolay Pochekuev on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var width = 300.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Марафон ")
                    .foregroundStyle(.gray)
                + Text("по SwiftUI")
                + Text(" «Отцовский Пинок»")
                    .foregroundStyle(.blue)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .frame(width: width, height: 200)
            .border(.red)
            Slider(
                value: $width,
                in: 100...300,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
