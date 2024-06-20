//
//  CardView.swift
//  Hike
//
//  Created by Illia Vlasov on 19.06.2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber = 1
    @State private var isShowingSheet = false
    
    func randomImage() {
        var randomNumber = imageNumber
        repeat {
            randomNumber = Int.random(
                in: 1...5
            )
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                
                VStack(
                    alignment: .leading
                ) {
                    HStack {
                        Text(
                            "Hiking"
                        )
                        .fontWeight(
                            .black
                        )
                        .font(
                            .system(
                                size: 52
                            )
                        )
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGrayLight,
                                    .customGrayMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        
                        Spacer()
                        
                        Button(action: {
                            isShowingSheet.toggle()
                        },
                               label: {
                            CustomButtonView()
                        })
                        .sheet(isPresented: $isShowingSheet,
                               content: {
                            SettingsView()
                                .presentationDragIndicator(
                                    .visible
                                )
                                .presentationDetents(
                                    [
                                        .medium,
                                        .large
                                    ]
                                )
                        })
                    }
                    
                    Text(
                        "Fun and enjoyable outdoor activity for friends and families."
                    )
                    .multilineTextAlignment(
                        .leading
                    )
                    .italic()
                    .foregroundColor(
                        .customGrayMedium
                    )
                }
                .padding(
                    .horizontal,
                    30
                )
                
                ZStack {
                    CustomCircleView()
                    Image(
                        "image-\(imageNumber)"
                    )
                    .resizable()
                    .scaledToFit()
                    .animation(
                        .default,
                        value: imageNumber
                    )
                }
                
                Button(action: {
                    randomImage()
                },
                       label: {
                    Text(
                        "Explore More"
                    )
                    .font(
                        .title2
                    )
                    .fontWeight(
                        .heavy
                    )
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .customGreenLight,
                                .customGreenMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .shadow(
                        color: .black.opacity(
                            0.25
                        ),
                        radius: 0.25,
                        x: 1,
                        y: 2
                    )
                })
                .buttonStyle(
                    GradientButton()
                )
                
            }
            
        }
        .frame(
            width: 320,
            height: 570
        )
    }
}

#Preview {
    CardView()
}
