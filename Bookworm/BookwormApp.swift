//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Adam Sayer on 8/8/2024.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
