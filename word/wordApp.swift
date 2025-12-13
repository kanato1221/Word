//
//  wordApp.swift
//  word
//
//  Created by 松井奏人 on 2025/11/30.
//

import SwiftUI

@main
struct wordApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Word.self)
        }
    }
}
