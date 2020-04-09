//
//  SettingsView.swift
//  Flashzilla
//
//  Created by Davron on 4/9/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var appendWrongCards: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $appendWrongCards) {
                    Text("Allow Card to reappear, if answered wrong")
                }
            }
            .navigationBarTitle("Settings", displayMode: .inline)
            .navigationBarItems(trailing: Button("Done", action: dismiss))
        }
        
    }
    
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(appendWrongCards: .constant(false))
    }
}
