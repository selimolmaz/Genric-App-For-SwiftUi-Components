//
//  Page3.swift
//  Generate Random number
//
//  Created by Selim Olmaz on 16.03.2023.
//

import Foundation
import SwiftUI

struct Page3: View {
    // cards
    @State var playerCard: String = "card12"
    @State var cpuCard: String = "card10"
    
    // scores
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack{
            //background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            //main area
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
                
                //button
                Button {
                    deal()
                } label: {
                    Image("dealbutton")
                }
                

                
                Spacer()
                //player scorres
                HStack{
                    Spacer()
                    //player 1
                    VStack{
                        //name
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        //score
                        Text("\(playerScore)").font(.largeTitle)
                    }
                    Spacer()
                    //player 2
                    VStack{
                        //name
                        Text("Cpu").font(.headline).padding(.bottom, 10.0)
                        //score
                        Text("\(cpuScore)").font(.largeTitle)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                
                Spacer()
            }
            
        }
    }
    func deal(){
        // randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }else if playerCardValue < cpuCardValue {
            cpuScore += 1
        } else {
            print("DRAW!")
        }
    }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
