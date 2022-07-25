//
//  LaunchScreen.swift
//  task-manager
//
//  Created by Бернат Данила on 25.07.2022.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        VStack {
            Image(Images.launchScreenLogo)
            Text("todo list").font(Font.custom("Roboto-ThinItalic", size: 48))
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
