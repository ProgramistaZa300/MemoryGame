//
//  ThemeButton.swift
//  MemoryGame
//
//  Created by student on 07/11/2023.
//

import SwiftUI

struct ThemeButton: View {
    @Binding var color: Color
    @State var icon: String
    @State var text: String

    var body: some View {
            VStack{
                Image(systemName: icon).foregroundColor(color)
                Text(text).font(.title3).foregroundStyle(color)
            }
    }

}

struct ThemeButton_Previews: PreviewProvider {
    static var previews: some View {
        ThemeButton(color: .constant(.blue), icon: "face.smiling", text: "Motyw 1")
    }
}
