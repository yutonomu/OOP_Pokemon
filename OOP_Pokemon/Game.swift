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
        let (winner, loser) = self.attack()
        self.showResult(winner: winner, loser: loser)
    }

    private func start() { // ごめん。privateつけ忘れてた
        print("\(pokemon1.name)が現れた！ \(pokemon1.name)のHPは\(pokemon1.hp)だ！")
        print("\(pokemon2.name)が現れた！ \(pokemon2.name)のHPは\(pokemon2.hp)だ！")
    }

    private func attack() -> (Pokemon, Pokemon) {
        while true {
            pokemon1.attack(target: pokemon2)
            if self.pokemon2.isFainted() {
                return (pokemon1, pokemon2)
            }

            pokemon2.attack(target: pokemon1)
            if self.pokemon1.isFainted() {
                return (pokemon2, pokemon1)
            }
        }
    }

    private func showResult(winner: Pokemon, loser: Pokemon) {
        print("\(loser.name)は倒れた。\(winner.name)の勝ち！")
    }
}
