//
//  xDismissButton.swift
//  Apple-Framework
//
//  Created by Vikram Kumar on 17/06/24.
//

import SwiftUI

struct xDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
            }
        }
        .padding()

    }
}

#Preview {
    xDismissButton(isShowingDetailView: .constant(false))
}
