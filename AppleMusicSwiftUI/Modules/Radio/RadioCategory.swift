//
//  RadioCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 15/6/21.
//

import SwiftUI

struct RadioCategory: View {
    private var items = StationModel.showItems
    private var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(items) { item in
                    HStack(alignment: .center) {
                        Image(item.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 110, height: 110)
                            .cornerRadius(10)
                            .padding()
                        
                        VStack(alignment: .leading) {
                            Spacer()
                            Text(item.stationName)
                                .font(.system(size: 18))
                                .multilineTextAlignment(.leading)
                                .font(.title3)
                            Text(item.stationDescription)
                                .font(.system(size: 14))
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            Divider()
                        }
                        .lineLimit(3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }.padding(.horizontal)
        }
    }
}

struct RadioCategory_Previews: PreviewProvider {
    static var previews: some View {
        RadioCategory()
    }
}
