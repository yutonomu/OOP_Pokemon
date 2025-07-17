//
//  Game.swift
//  OOP_Pokemon
//
//  Created by yuto on 2025/07/18.
//

import Foundation

class Game {
    func battle(pokemon1: Pokemon, pokemon2: Pokemon) {
        print("\(pokemon1.name)が現れた！ \(pokemon1.name)のHPは\(pokemon1.hp)だ！")
        print("\(pokemon2.name)が現れた！ \(pokemon2.name)のHPは\(pokemon2.hp)だ！")
        pokemon1.attack()
        pokemon2.attack()
    }
}
