//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct ContentView: View {
    let emojiArray: [String] = ["🐵", "🙈", "🙉", "🙊", "🐒", "🐗", "🐷", "🪿", "🪰", "🦄"]
    @State var cardCount: Int = 2
    var body: some View {
        VStack{
            Spacer().frame(height: 10)
             ScrollView {
                 cardDisplay
             }
            
            HStack{
                cardAdder
                Spacer()
                cardRemover
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 5)
        }
    }
    func adjustCardNumber(by offset: Int, symbol: String) -> some View  {
        return Button(symbol){
            cardCount += offset
        }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(Color.blue, lineWidth: 2)
                .frame(width:30, height:20))
            .disabled(cardCount < 2 && symbol == "-" || cardCount > emojiArray.count && symbol == "+")
    }
    
    var cardDisplay: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 10) {
            ForEach(emojiArray.prefix(cardCount), id: \.self) { emoji in
                CardView(hiddenFlag: true, emoji: emoji)
            }
        }
        .foregroundColor(.blue)
        .padding(.top, 10)
        .padding(.horizontal, 10)
    }
    
    var cardAdder: some View {
        return adjustCardNumber(by: 2, symbol: "+")
    }
    
    var cardRemover: some View {
        return adjustCardNumber(by: -2, symbol: "-")
    }
    
    
}
#Preview {
    ContentView()
}
