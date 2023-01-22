//
//  Row.swift
//  MindMuscle
//
//  Created by Elliot Clerice on 22/01/2023.
//

import SwiftUI

struct Row: View {
    let description: String
    let title: String
    let systemImage: String
    
    
    var body: some View {
        HStack {
            Image(systemName:systemImage)
                .frame(width:30)
                .font(.title)
                .foregroundColor(.accentColor)
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(description)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
    
    struct Row_Previews: PreviewProvider {
        static var previews: some View {
            Row(
                description: "testDesc",
                title: "Test",
                systemImage: "arrow.up.and.down")
        }
    }
}
