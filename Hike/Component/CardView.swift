//
//  CardView.swift
//  Hike
//
//  Created by Illia Vlasov on 19.06.2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight,
                        ], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 256)
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
