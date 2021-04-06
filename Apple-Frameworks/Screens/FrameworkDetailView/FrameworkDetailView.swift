//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Dmitriy Chernov on 05.04.2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        DetailedFrameworkView(framework: framework, isShowingDetailView: $isShowingDetailView)
    }
}


struct DetailedFrameworkView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack(spacing: 10) {
            DismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .fontWeight(.semibold)
                .padding()
            Spacer()
            DetailButton(title: "Learn More", isShowingSafariView: $isShowingSafariView)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.google.com")!)
        })
        .padding()
    }
}
