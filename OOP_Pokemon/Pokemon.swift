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
        print("\(name)の攻撃！", terminator: "")
        attackMessage()
    }

    func attackMessage() {
    }

}

class Pikachu: Pokemon {
    init() {
        super.init(name: "ピカチュウ", hp: 20, atk: 10)
    }

    override func attackMessage() {
        print("10万ボルト！")
    }

}

class Hitokage: Pokemon {
    init() {
        super.init(name: "ヒトカゲ", hp: 18, atk: 5)
    }

    override func attackMessage() {
        print("ひのこ！")
    }

}
