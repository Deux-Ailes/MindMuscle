//
//  ContentView.swift
//  MindMuscle
//
//  Created by Elliot Clerice on 21/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "airplane")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Bien le bonjour !")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
