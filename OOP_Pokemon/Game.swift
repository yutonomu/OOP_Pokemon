//
//  Game.swift
//  OOP_Pokemon
//
//  Created by yuto on 2025/07/18.
//

import Foundation

protocol PokemonInterface {
    var name: String { get }
    var hp: Int { get set }
    var atk: Int { get }
    var speed: Int { get }

    func attack(target: PokemonInterface)
    func attackMessage(target: PokemonInterface)
    func isFainted() -> Bool
}

class Game {
    private var pokemon1: PokemonInterface
    private var pokemon2: PokemonInterface

    init(pokemon1: PokemonInterface, pokemon2: PokemonInterface) {
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

    private func attack() -> (PokemonInterface, PokemonInterface) {
        while true {
            var (farstAttacker, secondAttacker) = self.compareSpeed(
                pokemon1: pokemon1,
                pokemon2: pokemon2
            )
            secondAttacker.hp -= farstAttacker.atk
            farstAttacker.attack(target: secondAttacker)
            if secondAttacker.isFainted() {
                return (farstAttacker, secondAttacker)
            }

            farstAttacker.hp -= secondAttacker.atk
            secondAttacker.attack(target: farstAttacker)
            if farstAttacker.isFainted() {
                return (secondAttacker, farstAttacker)
            }
        }
    }

    private func compareSpeed(pokemon1: PokemonInterface, pokemon2: PokemonInterface) -> (faster: PokemonInterface, slower: PokemonInterface) {
        if pokemon1.speed > pokemon2.speed {
            return (pokemon1, pokemon2)
        } else if pokemon1.speed < pokemon2.speed {
            return (pokemon2, pokemon1)
        } else {
            // 同速の場合はランダムで決定
            return Bool.random() ? (pokemon1, pokemon2) : (pokemon2, pokemon1)
        }
    }

    private func showResult(winner: PokemonInterface, loser: PokemonInterface) {
        print("\(loser.name)は倒れた。\(winner.name)の勝ち！")
    }
}
