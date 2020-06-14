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
//        ZStack {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 300, height: 300)
//                .onTapGesture {
//                    print("Rectangle tapped!")
//            }
//            Circle()
//                .fill(Color.red)
//                .frame(width: 300, height: 300)
//                .contentShape(Rectangle())
//                .onTapGesture {
//                    print("Circle tapped!")
//            }
////            .allowsHitTesting(false)
//        }
        
        VStack {
            Text("Hello!")
            Spacer().frame(height: 100)
            Text("World!")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("VStack tapped!")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
