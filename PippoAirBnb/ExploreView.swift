//
//  ExploreView.swift
//  PippoAirBnb
//
//  Created by Filippo Rota on 21/11/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
               
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 0, id: \.self) { listing in
                        ContentView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing  in
                Text("Listing Detail View...")
            }
        }
    }
}

#Preview {
    ExploreView()
}
        
      

