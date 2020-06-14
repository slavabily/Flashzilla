//
//  ContentView.swift
//  Flashzilla
//
//  Created by slava bily on 12/6/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import SwiftUI
import CoreHaptics

struct ContentView: View {
    
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
    
    @State private var counter = 0
 
    var body: some View {
        Text("Hello, World!")
            .onReceive(timer) { (time) in
                if self.counter == 5 {
                    self.timer.upstream.connect().cancel()
                } else {
                    print("The time is now \(time)")
                }
                
                self.counter += 1
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
