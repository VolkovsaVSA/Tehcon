//
//  PopOverView.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 21.02.2021.
//

import SwiftUI


struct PopOverView<Content>: View where Content: View {
    
    @Binding var isShowing: Bool
    var text: String
    
    var content: () -> Content
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack(alignment: .center) {
                content()
                    .disabled(isShowing)
                    .blur(radius: isShowing ? 4 : 0)
                
                Text(text)
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .padding()
                    .frame(width: geometry.size.width * 0.95)
                    .background(Color.secondary.colorInvert())
                    //.background(Color(UIColor.systemGray5).opacity(0.6))
                    .foregroundColor(Color.primary)
                    .cornerRadius(20)
                    .opacity(isShowing ? 1 : 0)
                    .gesture(DragGesture(minimumDistance: 0).onEnded { value in
                        withAnimation(Animation.easeOut(duration: 0.1)) {
                            isShowing = false
                        }
                    })
            }
//            .gesture(DragGesture(minimumDistance: 0).onEnded { value in
//                withAnimation(Animation.easeOut(duration: 0.1)) {
//                    isShowing = false
//                }
//            })
        }
        
    }
    
}
