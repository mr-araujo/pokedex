//
//  PokedexView.swift
//  Pokedex
//
//  Created by Murillo R. Araujo on 15/03/21.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemomCell(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokedex")
            .padding(.horizontal, 5)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
