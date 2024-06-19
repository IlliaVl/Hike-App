//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Illia Vlasov on 19.06.2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            LinearGradient(colors: [
                Color.customGreenLight,
                Color.customGreenMedium,
            ],
                           startPoint: .top,
                           endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
