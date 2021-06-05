//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 2/6/21.
//

import SwiftUI

struct LibraryView: View {

    @State private var showCategory = false
    @State private var editMode = EditMode.active

    var body: some View {
        NavigationView {
            VStack {
                if showCategory {
                    LibraryCategory()

                } else {
                    LibraryDescription()

                }
            }
            .navigationBarTitle("Медиатека")
            .accentColor(.red)
            .environment(\.editMode, .constant(showCategory ? EditMode.active : EditMode.inactive))
            .navigationBarItems(trailing:
                                    Button(action: {
                                        showCategory.toggle()
                                    }, label: {
                                        if showCategory {
                                            Text("Готово")
                                                .foregroundColor(.red)
                                                .font(.system(size: 17))

                                        } else {
                                            Text("Править")
                                                .foregroundColor(.red)
                                                .font(.system(size: 17))
                                        }

                                    }))
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
