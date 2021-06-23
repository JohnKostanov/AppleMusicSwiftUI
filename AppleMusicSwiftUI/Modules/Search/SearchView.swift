//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 23/6/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            SearchViewAdapter()
                .navigationBarTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
