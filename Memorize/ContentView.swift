//
//  ContentView.swift
//  Memorize
//
//  Created by Rodrigo Rafael on 04/07/20.
//  Copyright © 2020 Rodrigo Rafael. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(){
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var isFaceUp : Bool;
    
    var body: some View{
        ZStack(){
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
