//
//  LibraryDescription.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 4/6/21.
//

import SwiftUI

struct LibraryDescription: View {
    var body: some View {
        VStack {
            Text("Ищете свою музыку?")
                .font(.title.bold())

            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                .font(.title3)
                .foregroundColor(.gray)
        }
        .multilineTextAlignment(.center)
        .padding(.horizontal, 40)
    }
}

struct LibraryDescription_Previews: PreviewProvider {
    static var previews: some View {
        LibraryDescription()
    }
}
