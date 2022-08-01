//
//  ForgotPassworfView.swift
//  task-manager
//
//  Created by Бернат Данила on 01.08.2022.
//

import SwiftUI

struct ForgotPassworfView: View {
    @State private var username = ""
    var body: some View {
        VStack {
            VStack(spacing: 49) {
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Forgot Password").font(Font.custom("Roboto-ThinItalic", size: 36))
                        Text("Please enter your email below to recevie your password reset instructions")
                            .font(Font.custom("Roboto", size: 16))
                            .foregroundColor(Color(Colors.secondaryGray))
                    }
                    Spacer()
                }
                VStack(spacing: 47) {
                    VStack(spacing: 47) {
                        VStack(alignment: .leading, spacing: 17) {
                            HStack {
                                Text("Username").font(Font.custom("Roboto", size: 20))
                                Spacer()
                            }
                            TextField("Enter your email", text: $username)
                                .cornerRadius(5.0)
                        }
                    }
                    VStack(spacing: 55) {
                        Button("Send Request") {
                            //
                        }
                        .buttonStyle(.automatic)
                        .frame(width: 293, height: 48)
                        .background(Color(Colors.backgroundRed))
                        .cornerRadius(5)
                        .font(Font.custom("Roboto-ThinItalic", size: 18))
                        .tint(Color(Colors.white))
                    }
                }
            }
            Spacer()
        }.padding(24)
    }
}

struct ForgotPassworfView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassworfView()
    }
}
