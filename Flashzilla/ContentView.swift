//
//  ContentView.swift
//  Flashzilla
//
//  Created by Davron on 3/27/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI
import CoreHaptics

struct ContentView: View {
    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor

    var body: some View {
        HStack {
            if differentiateWithoutColor {
                Image(systemName: "checkmark.circle")
            }

            Text("Success")
        }
        .padding()
        .background(differentiateWithoutColor ? Color.black : Color.green)
        .foregroundColor(Color.white)
        .clipShape(Capsule())
    }
}

//struct ContentView: View {
//    @Environment(\.accessibilityReduceMotion) var reduceMotion
//    @State private var scale: CGFloat = 1
//
//    var body: some View {
//        Text("Hello, World!")
//            .scaleEffect(scale)
//            .onTapGesture {
//                if self.reduceMotion {
//                    self.scale *= 1.5
//                } else {
//                    withAnimation {
//                        self.scale *= 1.5
//                    }
//                }
//            }
//    }
//}

//struct ContentView: View {
//    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
//    var body: some View {
//        Text("Hello, World!")
//            .padding()
//            .background(reduceTransparency ? Color.black : Color.black.opacity(0.5))
//            .foregroundColor(Color.white)
//            .clipShape(Capsule())
//    }
//}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
