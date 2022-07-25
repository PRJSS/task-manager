//
//  FirstLaunchView.swift
//  task-manager
//
//  Created by Бернат Данила on 25.07.2022.
//

import SwiftUI

struct FirstLaunchView: View {
    @State private var index = 0
    private let firstLaunchViewArray = [
        GetStartedView(topImage: Images.firstLaunchCenterImage1, topText: "Welcome to todo list", bottomText: "Whats going to happen tomorrow?", bottomBackgroundImage: Images.firstLaunchBottomBackgroundImage1),
        GetStartedView(topImage: Images.firstLaunchCenterImage2, topText: "Work happens", bottomText: "Get notified when work happens.", bottomBackgroundImage: Images.firstLaunchBottomBackgroundImage2),
        GetStartedView(topImage: Images.firstLaunchCenterImage3, topText: "Tasks and assign", bottomText: "Task and assign them to colleagues.", bottomBackgroundImage: Images.firstLaunchBottomBackgroundImage3)
    ]
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $index) {
                    ForEach((0..<3), id: \.self) { index in
                        firstLaunchViewArray[index]
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                HStack(spacing: 8) {
                    ForEach((0..<3), id: \.self) { index in
                        Circle()
                            .fill(index == self.index ? Color.black : Color.black.opacity(0.5))
                            .frame(width: 8, height: 8)
                    }
                }
                Image(firstLaunchViewArray[index].bottomBackgroundImage)
            }.ignoresSafeArea(.all, edges: .all)
            VStack {
                Spacer().frame(height: 550)
                Button("Get started") {
                    //
                }
                .buttonStyle(.automatic)
                .frame(width: 293, height: 48)
                .background(Color.white)
                .cornerRadius(5)
                .shadow(radius: 10)
                .font(Font.custom("Roboto-ThinItalic", size: 18))
                .tint(Color.black)
            }
        }
    }
}

struct FirstLaunchView_Previews: PreviewProvider {
    static var previews: some View {
        FirstLaunchView()
    }
}
