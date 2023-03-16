//
//  ContentView.swift
//  Generate Random number
//
//  Created by Selim Olmaz on 16.03.2023.
//

import Foundation
import SwiftUI

struct Page1: View {
    //state for relatively update to view item
    @State private var sayi = "Sayı bekleniyor..."
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .padding()
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(sayi)
            Button("Sayi Uret") {
                let randomSayi = Int.random(in: 0...7)
                sayi = "\(randomSayi)"
            }
            .font(.system(size: 20))
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
