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
    .init(id: 1, name: "Mewtwo", imageUrl: "mewtwo", type: "Psychic")
]
