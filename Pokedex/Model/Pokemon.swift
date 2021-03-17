//
//  Pokemon.swift
//  Pokedex
//
//  Created by Murillo R. Araujo on 15/03/21.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Mew", imageUrl: "mew", type: "Psychic"),
    .init(id: 1, name: "Mewtwo", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2FB6C73244-8B87-45F4-BFA6-456297AFA456?alt=media&token=008666e2-370f-4370-8e34-9511136c9495", type: "Psychic")
]
