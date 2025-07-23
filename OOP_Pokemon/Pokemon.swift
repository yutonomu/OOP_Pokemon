//
//  Pokemon.swift
//  OOP_Pokemon
//
//  Created by yuto on 2025/07/18.
//

import Foundation

class Pokemon {
    private var characterName: String // _で始まる命名はSwiftの慣習ではないので避ける
    // なるべく意味のある命名にしたので、各自より良い名前をつけてください
    private var currentHp: Int // Swiftではプロパティ名にアンダースコアを使わないのが一般的でキャメルケースが推奨される
    private var maxHp: Int
    private var currentAtk: Int

    init(name: String, hp: Int, atk: Int) {
        self.characterName = name
        self.currentHp = hp
        self.maxHp = hp * 2
        self.currentAtk = atk
    }

    var name: String {
        get {
            return characterName
        }
    }

    var hp: Int {
        get {
            return currentHp
        }
        set {
            if newValue < 0 {
                currentHp = 0 // Swiftではselfがなくてもアクセス可能
            } else if newValue > maxHp {
                self.currentHp = maxHp
            } else {
                currentHp = newValue
            }
        }
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
