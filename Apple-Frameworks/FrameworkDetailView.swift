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
    
    var body: some View {
        
        VStack(spacing: 10) {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .fontWeight(.semibold)
                .padding()
            Spacer()
            DetailButton(title: "Learn More")
        }
        .padding()
    }
}
