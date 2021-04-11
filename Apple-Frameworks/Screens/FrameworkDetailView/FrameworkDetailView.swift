//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Dmitriy Chernov on 05.04.2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        DetailedFrameworkView(viewModel: viewModel)
    }
}


struct DetailedFrameworkView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            DismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .fontWeight(.semibold)
                .padding()
            Spacer()
            Link(destination: (URL(string: viewModel.framework.urlString) ?? URL(string: "www.google.com"))!, label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
}
