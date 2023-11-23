//
//  SearchAndFilterBar.swift
//  PippoAirBnb
//
//  Created by Filippo Rota on 21/11/23.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add guests")
                    .font(.caption2)
                    .foregroundColor(.gray) // 'foregroundStyle' is deprecated, use 'foregroundColor'
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.black) // 'foregroundStyle' is deprecated, use 'foregroundColor'
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.systemGray4)) // 'foregroundStyle' is deprecated, use 'foregroundColor'
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}


#Preview {
    SearchAndFilterBar()
}
