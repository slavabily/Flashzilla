//
//  ContentView.swift
//  Flashzilla
//
//  Created by slava bily on 12/6/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    @State private var currentAmount: CGFloat = 0
//    @State private var finalAmount: CGFloat = 1
    
//    @State private var currentAmount: Angle = .degrees(0)
//    @State private var finalAmount: Angle = .degrees(0)
    
    // how far the circle has been dragged
    @State private var offset = CGSize.zero
    // whether it is currently being dragged or not
    @State private var isDragging = false
    
    var body: some View {
        
        // MARK: simple tap gesture
//            Text("Hello, World!")
//                .onTapGesture(count: 2) {
//                    print("Double tapped!")
//            }
        
        // MARK: long press gesture
//            Text("Hello, World!")
//                .onLongPressGesture {
//                    print("Long pressed!")
//            }
        
        // MARK: long press gesture with duration
//            Text("Hello, World!")
//                .onLongPressGesture(minimumDuration: 2) {
//                    print("Long pressed!")
//            }
        
        // MARK: long press gesture with change and completion closures
//            Text("Hello, World!")
//                .onLongPressGesture(minimumDuration: 3, pressing: { inProgress in
//                    print("In progress: \(inProgress)")
//                }) {
//                    print("Long pressed!")
//            }
        
        // MARK: magnification gesture
//        Text("Hello, World!")
//            .scaleEffect(finalAmount + currentAmount)
//            .gesture(
//                MagnificationGesture()
//                .onChanged({ (amount) in
//                    self.currentAmount = amount - 1
//                })
//                .onEnded({ (amount) in
//                    self.finalAmount += self.currentAmount
//                    self.currentAmount = 0
//                }))
        
        // MARK: rotation gesture
//        Text("Hello, World!")
//            .rotationEffect(currentAmount + finalAmount)
//            .gesture(
//                RotationGesture()
//                    .onChanged({ (angle) in
//                        self.currentAmount = angle
//                    })
//                    .onEnded({ (angle) in
//                        self.finalAmount += self.currentAmount
//                        self.currentAmount = .degrees(0)
//                    }))
        
        // MARK: clash gestures
//        VStack {
//            Text("Hello, World!")
//                .onTapGesture {
//                    print("Text tapped!")
//            }
//        }
//        .onTapGesture {
//            print("VStack tapped!")
//        }
        
        // MARK: clash gestures with high priority gestures
//        VStack {
//            Text("Hello, World!")
//                .onTapGesture {
//                    print("Text tapped!")
//            }
//        }
//        .highPriorityGesture(
//            TapGesture()
//                .onEnded({ (_) in
//                    print("VStack tapped!")
//                }))
        
        // MARK: simultaneous gestures
//        VStack {
//            Text("Hello, World!")
//                .onTapGesture {
//                    print("Text tapped")
//            }
//        }
//        .simultaneousGesture(
//            TapGesture()
//                .onEnded({ (_) in
//                    print("VStack tapped!")
//                }))
        
        // MARK: Gesture sequencing
        
        // a drag gesture that updates offset and isDragging as it moves around
        let dragGesture = DragGesture()
            .onChanged { (value) in
                self.offset = value.translation
        }
        .onEnded { (_) in
            withAnimation {
                self.offset = .zero
                self.isDragging = false
            }
        }
        
        // a long press gesture that enables isDragging
        let pressGesture = LongPressGesture()
            .onEnded { (_) in
                withAnimation {
                    self.isDragging = true
                }
        }
        
        // a combined gesture that forces the user to long press than drag
        let combined = pressGesture.sequenced(before: dragGesture)
        
        // a 64x64 circle that scales up when its dragged, sets its offset to whatever we had back from the drag gesture, and uses our combined gesture
        return Circle()
            .fill(Color.red)
            .frame(width: 64, height: 64)
            .scaleEffect(isDragging ? 1.5 : 1)
            .offset(offset)
            .gesture(combined)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
