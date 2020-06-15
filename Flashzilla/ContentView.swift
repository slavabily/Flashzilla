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
    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor
    
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale: CGFloat = 1
    
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
 
    var body: some View {
        
        // MARK: Differentiate without color
//        HStack {
//            if differentiateWithoutColor {
//                Image(systemName: "checkmark.circle")
//            }
//            Text("Success")
//        }
//        .padding()
//        .background(differentiateWithoutColor ? Color.black : Color.green)
//        .foregroundColor(.white)
//        .clipShape(Capsule())
        
        // MARK: Reduce motion
//        Text("Hello, World!")
//        .scaleEffect(scale)
////            .onTapGesture {
////                if self.reduceMotion {
////                    self.scale *= 1.5
////                } else {
////                    withAnimation {
////                        self.scale *= 1.5
////                    }
////                }
//
//            .onTapGesture {
//                self.withOptionalAnimation {
//                    self.scale *= 1.5
//                }
        
        // MARK: Reduce transparency
        Text("Hello, World!")
            .padding()
            .background(reduceTransparency ? Color.black : Color.black.opacity(0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
    
    func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
        if UIAccessibility.isReduceMotionEnabled {
            return try body()
        } else {
            return try withAnimation(animation, body)
        }
    }
}
    
    

    
 


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
