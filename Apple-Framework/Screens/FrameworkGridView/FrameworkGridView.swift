//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Vikram Kumar on 08/03/24.
//

import SwiftUI
struct FrameworkGridView : View {
    @StateObject var viewModel = FrameworkGridViewModel()
    //let colums : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body : some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: viewModel.colums){
                    ForEach(MockData.frameworks){ framework in
                        
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
    }
    
    struct FrameworkGridView_Previews : PreviewProvider {
        static var previews: some View {
            FrameworkGridView()
                .preferredColorScheme(.dark)
        }
    }
    
    
    struct onclickView : View {
        let framework : Framework
        var body: some View {
            VStack{
                Image(framework.imageName)
                Text(framework.description)
                Button{
                    
                } label: {
                    Text("Learn More")
                        .font(.system(size: 20) .bold())
                        .frame(width:100,height: 100)
                        .background(.red)
                        .foregroundColor(.white)
                }
            }
        }
    }
    
}
