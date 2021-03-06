//
//  PokemomCell.swift
//  Pokedex
//
//  Created by Murillo R. Araujo on 12/03/21.
//

import SwiftUI
import Kingfisher

struct PokemomCell: View {
    let pokemon: Pokemon
    let color: UIColor
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack {
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48, height: 48)
                        .padding([.trailing, .bottom])
                }
            }
        }
        .background(Color(color))
        .cornerRadius(12)
        .shadow(color: Color(color), radius: 6, x: 0, y: 0)
    }
}

struct PokemomCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemomCell(pokemon: MOCK_POKEMON[1], color: .systemPurple)
            .previewLayout(.fixed(width: 250, height: 200))
    }
}
