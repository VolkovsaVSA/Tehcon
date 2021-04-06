//
//  FeedbackButtonView.swift
//  Tehcon (iOS)
//
//  Created by Sergei Volkov on 13.03.2021.
//

import SwiftUI

struct FeedbackButtonView: View {
    
    var buttonText: String
    var image: String?
    var systemName: String?
    @State var disableButton = false
    
   @State private var imageSize: CGFloat = 24
    
    var action: ()->()
    
    var body: some View {
        Button {
            action()
        } label: {
            
            HStack{
                if let img = image {
                    Image(img)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color(UIColor.label))
                        .frame(width: imageSize, height: imageSize)
                } else {
                    if let sysimg = systemName {
                        Image(systemName: sysimg)
                            .resizable()
                            .scaledToFit()
                            .frame(width: imageSize, height: imageSize)
                    }
                }
                
                
                VStack(alignment: .leading ,spacing: 0) {
                    Text(buttonText)
                    if disableButton {
                        Text("To send an email please configure email into settings iOS")
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 10, weight: .thin, design: .default))
                    }
                }
                Spacer()
//                ChevronView()
            }
        }
        .buttonStyle(FeedbackButtonStyle(disable: disableButton))
    }
}
