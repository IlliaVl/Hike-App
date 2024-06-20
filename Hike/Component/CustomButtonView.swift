//
//  CustomButtonView.swift
//  Hike
//
//  Created by Illia Vlasov on 20.06.2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight, .customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                    style: StrokeStyle(lineWidth: 4)
                )
                .frame(width: 58, height: 58)
            
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
        }
    }
}

#Preview {
    CustomButtonView()
    //        .previewLayout(.sizeThatFits)
    //        .padding()
}
