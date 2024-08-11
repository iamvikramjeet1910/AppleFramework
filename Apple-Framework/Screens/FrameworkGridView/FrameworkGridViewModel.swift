//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Vikram Kumar on 09/03/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
   @Published var isShowingDetailView = false
   let colums : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
}
