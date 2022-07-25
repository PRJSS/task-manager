//
//  GetStartedView.swift
//  task-manager
//
//  Created by Бернат Данила on 25.07.2022.
//

import SwiftUI

struct GetStartedView: View, Hashable {
    let id = UUID()
    let topImage: String
    let topText: String
    let bottomText: String
    let bottomBackgroundImage: String
    var body: some View {
        VStack(spacing: 50) {
            VStack() {
                VStack(spacing: 50) {
                                Image(topImage)
                                VStack(spacing: 11) {
                                    Text(topText).font(Font.custom("Roboto-ThinItalic", size: 24))
                                    Text(bottomText).font(Font.custom("Roboto", size: 18))
                                }
                            }
            }
        }
        
    }
}

struct GetStarted1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GetStartedView(topImage: Images.firstLaunchCenterImage1, topText: "Welcome to todo list", bottomText: "Whats going to happen tomorrow?", bottomBackgroundImage: Images.firstLaunchBottomBackgroundImage1)
        }
    }
}
