//
//  Page3.swift
//  Generate Random number
//
//  Created by Selim Olmaz on 16.03.2023.
//

import Foundation
import SwiftUI

struct Page3: View {
    
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
                    Image("card4")
                    Spacer()
                    Image("card5")
                    Spacer()
                }
                Spacer()
                
                //button
                Image("dealbutton")
                
                Spacer()
                //player scorres
                HStack{
                    Spacer()
                    //player 1
                    VStack{
                        //name
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        //score
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                    //player 2
                    VStack{
                        //name
                        Text("Cpu").font(.headline).padding(.bottom, 10.0)
                        //score
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
