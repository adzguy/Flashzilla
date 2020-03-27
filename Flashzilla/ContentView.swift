//
//  ContentView.swift
//  Flashzilla
//
//  Created by Davron on 3/27/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var currentAmount: Angle = .degrees(0)
    @State private var finalAmount: Angle = .degrees(0)
    
    var body: some View {
        Text("Hello, World!")
            .rotationEffect(finalAmount + currentAmount)
        .gesture(
            RotationGesture()
                .onChanged { (angle) in
                    self.currentAmount = angle
                }
                .onEnded { (amount) in
                    self.finalAmount += self.currentAmount
                    self.currentAmount = .degrees(0)
                }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
