//
//  Card.swift
//  Flashzilla
//
//  Created by Davron on 3/27/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import Foundation

struct Card {
    let prompt: String
    let answer: String

    static var example: Card {
        Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
    }
}