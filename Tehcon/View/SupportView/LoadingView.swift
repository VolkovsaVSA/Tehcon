//
//  ActivityIndicatorView.swift
//  Neslis
//
//  Created by Sergey Volkov on 02.08.2020.
//  Copyright © 2020 Sergei Volkov. All rights reserved.
//

import SwiftUI

struct LoadingView<Content>: View where Content: View {

    @Binding var isShowing: Bool
    
    var text: String
    var content: () -> Content

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {

                content()
                    .disabled(isShowing)
                    .blur(radius: isShowing ? 3 : 0)

                VStack {
                    Text(text).multilineTextAlignment(.center)
                    ActivityIndicator(isAnimating: .constant(true), style: .large)
                        .padding()
                }
                .frame(width: geometry.size.width / 1.5,
                       height: geometry.size.height / 3)
                .background(Color.secondary.colorInvert())
                .foregroundColor(Color.primary)
                .cornerRadius(20)
                .opacity(isShowing ? 1 : 0)
            }
        }
        
    }

}

struct ActivityIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
