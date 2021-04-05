//
//  DetailButton.swift
//  Apple-Frameworks
//
//  Created by Dmitriy Chernov on 05.04.2021.
//

import SwiftUI

struct DetailButton: View {
    var title: String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50, alignment: .center)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        })
    }
}
