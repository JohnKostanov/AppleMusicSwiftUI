//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 2/6/21.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищете свою музыку?")
                    .font(.title.bold())

                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            .multilineTextAlignment(.center)
            .padding(.horizontal, 40)
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: Button("Править", action: {
                // go list of songs
            })
                .foregroundColor(.red)
                .font(.system(size: 17))
            )
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
