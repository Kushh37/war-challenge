//
//  ContentView.swift
//  war-challenge
//
//  Created by Kushh Patel on 07/11/21.
//

import SwiftUI

struct ContentView: View {
    
   @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                        
                    }else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    else {
                        
                    }
                    
                } label: {
                    Image("dealbutton")
                }

                
                Spacer()
                HStack {
                    Spacer()
                    VStack(spacing: 20.0) {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(spacing: 20.0) {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
