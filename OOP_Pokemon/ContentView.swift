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
                let game = Game()
                let pokemon = Pokemon()
                game.battle(pokemon: pokemon)
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
