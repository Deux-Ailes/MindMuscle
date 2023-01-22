//
//  LandingView.swift
//  MindMuscle
//
//  Created by Elliot Clerice on 22/01/2023.
//

import SwiftUI

struct LandingView: View {
    enum NavigationOption {
        case analyse, seance, exercises, stats
    }
    @State private var selection: NavigationOption?
    
    var body: some View {
        VStack(alignment: .center){
            Text("Bonjour jeune homme !")
            
            NavigationSplitView {
                
                List(selection: $selection){
                    Row(description:"Analyse des données", title:"Analyse",systemImage:"magnifyingglass").tag(NavigationOption.analyse)
                    Row(description:"Je fais ma séance", title:"Workout",systemImage:"dumbbell").tag(NavigationOption.seance)
                    Row(description:"Consultation des exercices", title:"Exercices",systemImage:"figure.flexibility").tag(NavigationOption.analyse)
                    Row(description:"Plus ou moins intéressant", title:"Stats",systemImage:"info.circle").tag(NavigationOption.stats)
                    
                }
                .frame(height: nil)
                .navigationTitle("Accueil")
                .font(.caption)
            }detail: {
                if let selection{
                    switch selection{
                    case .analyse: EmptyView()
                    case .seance: EmptyView()
                    case .exercises: ExerciseSelectionView()
                    case .stats: EmptyView()
                    }
                }
            }
            .padding(.top, 0.0)
            .frame(height: nil)
        }
        
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
