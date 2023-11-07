//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct ContentView: View {
    let emojis1 = ["🐵", "🙈", "🙉", "🙊", "🐒","🐵", "🙈", "🙉", "🙊", "🐒"]
    let emojis2 = ["🐒", "🐗", "🐷", "🪿", "🪰", "🦄","🐒", "🐗", "🐷", "🪿", "🪰", "🦄"]
    let emojis3 = ["🐍", "🪲","🦭", "🦧","🐍", "🪲","🦭", "🦧"]
    @State var emojis = []
    @State var numberOfCards = 10
    @State var themeColor:Color = .blue
    
    var body: some View {
        VStack{
            Text("Memo").font(.largeTitle)
            Spacer().frame(height: 10)
             ScrollView {
                 cardDisplay
             }
                selector

//            HStack{
//                cardAdder
//                Spacer()
//                cardRemover
//            }
//            .padding(.horizontal, 20)
        }
        .padding()
    }
    
    var selector: some View {
        HStack {
            ThemeButton(color: $themeColor, icon: "smiley", text: "Motyw 1")
                .onTapGesture(perform: {
                    changer(theme:"motyw1")
                })
            Spacer()
            ThemeButton(color: $themeColor, icon: "shuffle", text: "Motyw 2")
                .onTapGesture(perform: {
                    changer(theme:"motyw2")
                })
            Spacer()
            ThemeButton(color: $themeColor, icon: "pawprint.circle", text: "Motyw 3")
                .onTapGesture(perform: {
                    changer(theme:"motyw3")
                })
        }
    }
    
    func changer(theme:String){
        if(theme == "motyw2"){
            self.themeColor = Color.red
            emojis = emojis2.shuffled()
        }
        else if(theme == "motyw3"){
            self.themeColor = Color.green
            emojis = emojis3.shuffled()
        }
        else{
            self.themeColor = Color.blue
            emojis = emojis1.shuffled()
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
            ForEach(0..<emojis.count, id: \.self) { emoji in
                CardView(hiddenFlag: true, emoji: emojis[emoji] as! String, color: themeColor)
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
