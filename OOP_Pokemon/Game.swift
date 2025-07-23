//
//  Game.swift
//  OOP_Pokemon
//
//  Created by yuto on 2025/07/18.
//

import Foundation

class Game {
    private var pokemon1: Pokemon
    private var pokemon2: Pokemon

    init(pokemon1: Pokemon, pokemon2: Pokemon) {
        self.pokemon1 = pokemon1
        self.pokemon2 = pokemon2
    }

    func battle() {
        self.start()
        pokemon1.attack()
        pokemon2.attack()
    }

    func start() {
        print("\(pokemon1.name)が現れた！ \(pokemon1.name)のHPは\(pokemon1.hp)だ！")
        print("\(pokemon2.name)が現れた！ \(pokemon2.name)のHPは\(pokemon2.hp)だ！")
    }
}
