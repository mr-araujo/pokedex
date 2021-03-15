//
//  PokemomCell.swift
//  Pokedex
//
//  Created by Murillo R. Araujo on 12/03/21.
//

import SwiftUI

struct PokemomCell: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Mew")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack {
                    Text("Psychic")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    Image("mew")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.trailing, .bottom])
                }
            }
        }
        .background(Color.pink)
        .cornerRadius(12)
        .shadow(color: .pink, radius: 6, x: 0, y: 0)
    }
}

struct PokemomCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemomCell()
            .previewLayout(.fixed(width: 250, height: 200))
    }
}
