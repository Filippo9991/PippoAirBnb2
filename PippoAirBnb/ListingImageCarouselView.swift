//
//  ListingImageCarouselView.swift
//  PippoAirBnb
//
//  Created by Filippo Rota on 22/11/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "NapoliRoof",
        "SorrentoVilla",
        "MilanVilla",
        "BolognaAp",
    ]
    
    var body: some View {
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page)
        }
    }
#Preview {
    ListingImageCarouselView()
}
