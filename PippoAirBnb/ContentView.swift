//
//  ContentView.swift
//  PippoAirBnb
//
//  Created by Filippo Rota on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            // Images
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            // Listing details
            HStack(alignment: .top) {
                // Details
                VStack(alignment: .leading) {
                    Text("Napoli, Campania")
                    Text("10 km away")
                    Text("Nov 23 - 25")
                    
                    HStack(spacing: 4) {
                        Text("€190")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                // Rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.92")
                }
                .foregroundColor(.black)
            }
            .font(.footnote) // Details
        }
    }
}

#Preview {
    ContentView()
}
