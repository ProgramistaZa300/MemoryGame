//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct ContentView: View {
    let emojiArray = ["🐵", "🙈", "🙉", "🙊", "🐒", "🐗", "🐷", "🪿", "🪰", "🦄", "🐍", "🪲","🪲", "🙈"]
    var body: some View {
        VStack{
            Text("Memo").font(.largeTitle)
            Spacer().frame(height: 10)
             ScrollView {
                 cardDisplay
             }
            Text("to ja 🤡")
//            HStack{
//                cardAdder
//                Spacer()
//                cardRemover
//            }
//            .padding(.horizontal, 20)
        }
    }
    
//    func adjustCardNumber(by offset: Int, symbol: String) -> some View  {
//        return Button(symbol){
//            cardCount += offset
//        }
//            .padding()
//            .overlay(RoundedRectangle(cornerRadius: 5)
//                .stroke(Color.blue, lineWidth: 2)
//                .frame(width:30, height:20))
//            .disabled(cardCount < 2 && symbol == "-" || cardCount > emojiArray.count && symbol == "+")
//    }
    
    var cardDisplay: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 10) {
            ForEach(0..<emojiArray.count, id: \.self) { emoji in
                CardView(hiddenFlag: true, emoji: emojiArray[emoji]).aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.blue)
        .padding(.top, 10)
        .padding(.horizontal, 10)
    }
    
//    var cardAdder: some View {
//        return adjustCardNumber(by: 2, symbol: "+")
//    }
    
//    var cardRemover: some View {
//        return adjustCardNumber(by: -2, symbol: "-")
//    }
    
    
}
#Preview {
    ContentView()
}
