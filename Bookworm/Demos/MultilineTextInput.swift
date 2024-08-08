//
//  MultilineTextInput.swift
//  Bookworm
//
//  Created by Adam Sayer on 9/8/2024.
//

import SwiftUI

struct MultilineTextInput: View {
    
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $notes)
                    .navigationTitle("Notes")
                    .padding()
                
                TextField("Enter your text", text: $notes, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .navigationTitle("Notes")
                    .padding()
            }
        }
    }
}

#Preview {
    MultilineTextInput()
}
