//
//  SearchViewAdapter.swift
//  AppleMusicSwiftUI
//
//  Created by Джон Костанов on 23/6/21.
//

import SwiftUI
import UIKit

struct SearchViewAdapter: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UIViewController {
        CollectionView()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
