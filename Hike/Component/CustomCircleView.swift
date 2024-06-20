//
//  CustomCircleView.swift
//  Hike
//
//  Created by Illia Vlasov on 20.06.2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight,
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .frame(
                    width: 256
                )
                .onAppear(perform: {
                    withAnimation(
                        .linear(
                            duration: 3.0
                        ).repeatForever()
                    ) {
                        isAnimateGradient.toggle()
                    }
            })
            MotionAnimationView()
        }
    }
}

#Preview {
    CustomCircleView()
}
