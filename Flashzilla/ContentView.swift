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
 
    var body: some View {
        Text("Hello, World!")
//            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { (_) in
//                print("Moving to the background!")
//        }
        
//            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { (_) in
//                print("Moving back to the foreground!")
//        }
        
//            .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { (_) in
//                print("User took a screen shot!")
//        }
        
//            .onReceive(NotificationCenter.default.publisher(for: UIApplication.significantTimeChangeNotification)) { (_) in
//                print("User changed their clock!")
//        }
        
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.keyboardDidShowNotification)) { (_) in
                print("Keyboard is shown!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
