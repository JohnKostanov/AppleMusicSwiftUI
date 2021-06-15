//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 15/6/21.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Divider()
                        .padding(.top, 4)
                    RadioStationCategory()
                        .frame(height: 340)

                    Divider()
                        .padding(.top, 4)
                    Text("Станции")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 26))
                        .padding()
                    RadioCategory()
                }
            }
            .navigationBarTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}