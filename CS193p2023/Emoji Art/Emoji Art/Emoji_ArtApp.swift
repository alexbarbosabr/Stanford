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
    @StateObject var palleteStore2 = PaletteStore(named: "Alternate")
    @StateObject var palleteStore3 = PaletteStore(named: "Special")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
//            PaletteManager(stores: [palleteStore, palleteStore2, palleteStore3])
                .environmentObject(palleteStore)
        }
    }
}
