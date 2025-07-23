//
//  ContentView.swift
//  OOP_Pokemon
//
//  Created by yuto on 2025/07/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                let pikachu = Pikachu()
                let hitokage = Hitokage()
                let game = Game(pokemon1: pikachu, pokemon2: hitokage)
                game.battle()
            }) {
                Text("ポケモンバトルを開始")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
