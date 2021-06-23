//
//  SearchModel.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 23/6/21.
//

import UIKit

protocol ReusableView: AnyObject {
     static var identifier: String { get }
 }

 struct SearchModel {
     var image: UIImage?
 }

 extension SearchModel {
     static var items = [
        SearchModel(image: UIImage(named: "01")),
        SearchModel(image: UIImage(named: "02")),
        SearchModel(image: UIImage(named: "03")),
        SearchModel(image: UIImage(named: "04")),
        SearchModel(image: UIImage(named: "05")),
        SearchModel(image: UIImage(named: "06")),
        SearchModel(image: UIImage(named: "01")),
        SearchModel(image: UIImage(named: "02")),
        SearchModel(image: UIImage(named: "03")),
        SearchModel(image: UIImage(named: "04")),
        SearchModel(image: UIImage(named: "05")),
        SearchModel(image: UIImage(named: "06")),
     ]
 }

