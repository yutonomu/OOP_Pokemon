//
//  Game.swift
//  OOP_Pokemon
//
//  Created by yuto on 2025/07/18.
//

import Foundation

class Game {
    func battle(pokemon: Pokemon) {
        print("\(pokemon.name)が現れた！ \(pokemon.name)のHPは\(pokemon.hp)だ！")
        pokemon.attack()
    }
}
