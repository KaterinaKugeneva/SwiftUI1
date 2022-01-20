//
//  ContentView.swift
//  SwiftUI1
//
//  Created by Ekaterina Kugeneva on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var buttonLabel = "START"
    @State private var redlightOpacity = 0.3
    @State private var yellowlightOpacity = 0.3
    @State private var greenlightOpacity = 0.3
    private let circleWidth = UIScreen.main.bounds.width / 3
    
    var body: some View {
        
        VStack{
            Circle().frame(width: circleWidth, height: circleWidth)
                .foregroundColor(.red)
                .opacity(redlightOpacity)
                .overlay(Circle().stroke())
                
            Circle().frame(width: circleWidth, height: circleWidth)
                .foregroundColor(.yellow)
                .opacity(yellowlightOpacity)
                .overlay(Circle().stroke())
            Circle().frame(width: circleWidth, height: circleWidth)
                .foregroundColor(.green)
                .opacity(greenlightOpacity)
                .overlay(Circle().stroke())
            Spacer()
            Button(action: {
                count = count + 1
                buttonLabel = "NEXT"
                if count == 4 {count = 1}
                switch count {
                case 1: redlightOpacity = 1
                    yellowlightOpacity = 0.3
                    greenlightOpacity = 0.3
                case 2: redlightOpacity = 0.3
                    yellowlightOpacity = 1
                    greenlightOpacity = 0.3
                default: redlightOpacity = 0.3
                    yellowlightOpacity = 0.3
                    greenlightOpacity = 1
                }
                }){Text("\(buttonLabel)")}
                .frame(width: 180, height: 60)
                .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.4))
            
        }.padding()
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
