//
//  FrameworkDetailView.swift
//  Apple-Framework
//
//  Created by Vikram Kumar on 08/03/24.
//

import SwiftUI
struct FrameworkDetailView: View {
    var framework : Framework
    @State private var  isShowingSafariView = false
    @Binding var isShowingDetailView : Bool
    var body: some View {
        VStack {
            xDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .padding()
                .font(.body)
            Spacer()
            Button{
                isShowingSafariView = true
            } label : {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string : "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews : PreviewProvider{
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
