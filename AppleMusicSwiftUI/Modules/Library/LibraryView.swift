//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 2/6/21.
//

import SwiftUI

struct LibraryView: View {

    @State private var showCategory = false
   
    
    var body: some View {
        NavigationView {
            if showCategory {
                LibraryCategory()
                    .toolbar { EditButton() }
                    .navigationBarItems(trailing:
                                            Button(action: {
                                                showCategory.toggle()
                                            }, label: {
                                                Text("Готово")
                                            })
                                            .foregroundColor(.red)
                                            .font(.system(size: 17))
                    )

                    .navigationTitle("Медиатека")
            } else {
                LibraryDescription()
                    .navigationBarItems(trailing:
                                            Button(action: {
                                                showCategory.toggle()
                                            }, label: {
                                                Text("Править")
                                            })
                                            .foregroundColor(.red)
                                            .font(.system(size: 17))
                    )
                    .navigationTitle("Медиатека")
            }


        }
    }

}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
