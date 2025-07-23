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
    fileprivate var currentAtk: Int // Swiftではprivateは継承していてもアクセスできないため、fileprivateを使用
    // atkというgetter/setterを使うのもありだと思う
    private var currentSpeed: Int

    init(name: String, hp: Int, atk: Int, speed: Int) {
        self.characterName = name
        self.currentHp = hp
        self.maxHp = hp * 2
        self.currentAtk = atk
        self.currentSpeed = speed
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

    // 違う方法として、プロパティを使わずにメソッドで取得することも可能
    var atk: Int {
        get {
            currentAtk
        }
    }

    // returnを使わずにプロパティで取得することも可能
    // ただし、プロジェクト内では揃えた方が良いので、どちらかに統一することをおすすめします
    var speed: Int {
        get {
            currentSpeed
        }
    }

    func attack(target: Pokemon) {
        target.hp -= currentAtk
        print("\(name)の攻撃！", terminator: "")
        attackMessage(target: target)
    }

    func attackMessage(target: Pokemon) {
    }

    func isFainted() -> Bool {
        return currentHp <= 0
    }
}

class Pikachu: Pokemon {
    init() {
        super.init(name: "ピカチュウ", hp: 20, atk: 10, speed: 20)
    }

    override func attackMessage(target: Pokemon) {
        print(
            "10万ボルト！\(target.name)は\(atk)ダメージをもらった！\(target.name)のHPは\(target.hp)だ！"
        )
    }

}

class Hitokage: Pokemon {
    init() {
        super.init(name: "ヒトカゲ", hp: 18, atk: 5, speed: 20)
    }

    override func attackMessage(target: Pokemon) {
        print("ひのこ！\( target.name)は\(currentAtk)ダメージをもらった！\(target.name)のHPは\(target.hp)だ！")
    }

}
