//
//  Card.swift
//  Flashzilla
//
//  Created by slava bily on 16/6/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import Foundation

struct Card {
    let prompt: String
    let answer: String
    
    static var example: Card {
        Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Wittaker")
    }
}
