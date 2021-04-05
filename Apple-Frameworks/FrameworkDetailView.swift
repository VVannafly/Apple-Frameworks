//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Dmitriy Chernov on 05.04.2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    var body: some View {
        
        DetailedFrameworkView(framework: MockData.frameworks[0])
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct DetailedFrameworkView: View {
    
    let framework: Framework
    
    var body: some View {
        
        VStack(spacing: 10) {
            HStack {
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
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
