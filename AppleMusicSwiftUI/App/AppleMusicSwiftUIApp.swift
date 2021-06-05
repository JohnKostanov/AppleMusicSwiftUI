//
//  AppleMusicSwiftUIApp.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 2/6/21.
//

import SwiftUI

@main
struct AppleMusicSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {

            TabView() {
                LibraryView().tabItem { Label("Медиатека", systemImage: "music.note.house.fill") }.tag(1)
                Text("Радио").tabItem { Label("Радио", systemImage: "dot.radiowaves.left.and.right") }.tag(2)
                Text("Поиск").tabItem { Label("Поиск", systemImage: "magnifyingglass") }.tag(3)
            }
        }
    }
}
