//
//  CardView.swift
//  MemoryGame
//
//  Created by student on 17/10/2023.
//

import Foundation

import SwiftUI

struct CardView: View {
    @State var hiddenFlag: Bool = false
    @State var emoji: String
    var body: some View {
        ZStack{
            Group{
                RoundedRectangle(cornerRadius: 12)
                .stroke(Color.blue, lineWidth: 2)
                Text(emoji).font(.largeTitle)
                RoundedRectangle(cornerRadius: 12)
                .fill(Color.blue)
                .opacity(hiddenFlag ? 0 : 1)
            }
            .onTapGesture {
                self.hiddenFlag = !self.hiddenFlag
            }
        }
        

    }
}
