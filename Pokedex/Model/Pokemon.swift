//
//  Pokemon.swift
//  Pokedex
//
//  Created by Murillo R. Araujo on 15/03/21.
//

import Foundation

struct Pokemon {
    let id: Int
    let name: String
    let image: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Mew", image: "mew", type: "Psychic"),
    .init(id: 1, name: "Mewtwo", image: "mewtwo", type: "Psychic")
]
