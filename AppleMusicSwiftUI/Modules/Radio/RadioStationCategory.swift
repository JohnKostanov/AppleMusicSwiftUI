//
//  RadioStationCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 15/6/21.
//

import SwiftUI

struct RadioStationCategory: View {
    private let items = StationModel.showItems
    private let rows = [ GridItem(.flexible(maximum: 200)) ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach(items, id: \.self) { item in
                    
                    VStack {
                        Text(item.stationType)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 20))
                            .foregroundColor(.secondary)
                        
                        Text(item.stationName)
                            .frame(maxWidth: 380, alignment: .leading)
                            .font(.system(size: 22))
                            .lineLimit(2)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Text(item.stationDescription)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 22))
                            .foregroundColor(.secondary)
                            .padding(.bottom, 1)
                        
                        Image(item.image)
                            .resizable()
                            .frame(width: 380, height: 250)
                            .cornerRadius(10)
                    }
                }
            }.padding(.leading)
        }
    }
}

struct RadioStationCategory_Previews: PreviewProvider {
    static var previews: some View {
        RadioStationCategory()
    }
}
