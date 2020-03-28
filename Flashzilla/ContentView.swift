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

    var body: some View {
        Text("Hello, World!")
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)){ _ in
                print("User took screenshot!")
                
            }
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)){ _ in
                print("Moving to the background!")
                
            }
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
                print("Moving back to the foreground!")
            }
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.significantTimeChangeNotification)) { _ in
                print("when the user changes their clock or when daylight savings time changes!")
            }
        .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardDidShowNotification)) { _ in
                print("when the keyboard is shown!")
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
