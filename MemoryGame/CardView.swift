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
    var emoji: String
    var color: Color
    var body: some View {
        ZStack{
            Group{
                RoundedRectangle(cornerRadius: 12)
                .stroke(color, lineWidth: 2)
                Text(emoji).font(.largeTitle)
                RoundedRectangle(cornerRadius: 12)
                .fill(color)
                .opacity(hiddenFlag ? 0 : 1)
                .aspectRatio(2/3, contentMode: .fit)
            }
            .onTapGesture {
                self.hiddenFlag = !self.hiddenFlag
            }
        }
        

    }
}
