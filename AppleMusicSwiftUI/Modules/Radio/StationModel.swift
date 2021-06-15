//
//  StationModel.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 15/6/21.
//

import Foundation

struct StationModel: Identifiable, Hashable {
    var id = UUID()
    var stationType: String
    var stationName: String
    var stationDescription: String
    var image: String
}

extension StationModel {
    static var showItems = [
        StationModel(stationType: "Избранная радиостанция", stationName: "Популярное", stationDescription: "То, что слушают прямо сейчас.", image: "popular"),
        StationModel(stationType: "Избранная радиостанция", stationName: "Классика рока", stationDescription: "Гении гитарного звука.", image: "rock"),
        StationModel(stationType: "Новая радиостанция", stationName: "Хип-Хоп", stationDescription: "Идеальные биты и рифмы.", image: "hip-hop")
    ]
}
