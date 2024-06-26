//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Illia Vlasov on 20.06.2024.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(
        in: 6...12
    )
    @State private var isAnimated = false
    
    func randomSize() -> CGFloat {
        return CGFloat.random(
            in: 4...80
        )
    }
    
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(
            in: 0...256
        )
    }
    
    func randomScale() -> CGFloat {
        return CGFloat.random(
            in: 0.1...2.0
        )
    }
    
    func randomSpeed() -> Double {
        return Double.random(
            in: 0.05...1.0
        )
    }
    
    func randomDelay() -> Double {
        return Double.random(
            in: 0...2
        )
    }
    
    var body: some View {
        ZStack {
            ForEach(
                0...randomCircle,
                id: \.self
            ) { item in
                Circle()
                    .foregroundColor(
                        .white
                    )
                    .opacity(
                        0.25
                    )
                    .frame(
                        width: randomSize()
                    )
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(
                        isAnimated ? randomScale() : 1.0
                    )
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(
                                stiffness: 0.25,
                                damping: 0.25
                            ).repeatForever().speed(
                                randomSpeed()
                            )
                            .delay(randomDelay())
                        ) {
                            isAnimated = true
                        }
                    })
            }
        }
        .frame(
            width: 256,
            height: 256
        )
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
}
