//
//  Pokemon.swift
//  OOP_Pokemon
//
//  Created by yuto on 2025/07/18.
//

import Foundation

class Pokemon {
    let name: String
    let hp: Int
    let atk: Int

    init(name: String, hp: Int, atk: Int) {
        self.name = name
        self.hp = hp
        self.atk = atk
    }


    func attack() {
        print("\(name)の攻撃！ 10万ボルト！")
    }
}
