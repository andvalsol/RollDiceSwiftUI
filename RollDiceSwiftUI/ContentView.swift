//
//  ContentView.swift
//  RollDiceSwiftUI
//
//  Created by Andrey Solera on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    Dicee(number: "1")
                    Dicee(number: "2")
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    // Generate random numbers
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}

struct Dicee: View {
    
    let number: String
    
    var body: some View {
        Image("dice\(number)").resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}
