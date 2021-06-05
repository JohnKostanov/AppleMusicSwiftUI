//
//  LibraryCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 4/6/21.
//

import SwiftUI

struct LibraryCategory: View {

    @State private var multiSelection = Set<UUID>()
    @State private var editMode = EditMode.inactive

    var body: some View {
        NavigationView {
            List(selection: $multiSelection) {
                ForEach(categories) { category in
                    HStack {
                        Image(systemName: category.image)
                            .foregroundColor(.red)
                        Text(category.name)
                    }
                    .font(.system(size: 20))
                }
                .onMove(perform: { indices, newOffset in
                    // to do
                })
            }
            .navigationBarItems(trailing: EditButton())
            .environment(\.editMode, $editMode)
            
        }
    }
}

struct CategoryItem: Identifiable {
    let image: String
    let name: String
    let id = UUID()
}

private var categories = [
    CategoryItem(image: "music.note.list", name: "Плейлисты"),
    CategoryItem(image: "music.mic", name: "Артисты"),
    CategoryItem(image: "square.stack", name: "Альбомы"),
    CategoryItem(image: "music.note", name: "Песни"),
    CategoryItem(image: "tv", name: "Телешоу"),
    CategoryItem(image: "tv.music.note", name: "Видеоклипы"),
    CategoryItem(image: "guitars", name: "Жанры"),
    CategoryItem(image: "person.2.square.stack", name: "Сборники"),
    CategoryItem(image: "music.quarternote.3", name: "Авторы"),
    CategoryItem(image: "arrow.down.circle", name: "Загружено"),
    CategoryItem(image: "music.note.house", name: "Домашняя коллекция")
]


struct LibraryCategory_Previews: PreviewProvider {
    static var previews: some View {
        LibraryCategory()
    }
}
