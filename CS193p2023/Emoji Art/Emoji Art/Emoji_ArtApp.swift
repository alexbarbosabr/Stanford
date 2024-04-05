//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Alex on 04/04/24.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    @StateObject var palleteStore = PaletteStore(named: "Main")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
                .environmentObject(palleteStore)
        }
    }
}
