//
//  SignInView.swift
//  task-manager
//
//  Created by Бернат Данила on 27.07.2022.
//

import SwiftUI

struct SignInView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                VStack(spacing: 49) {
                    HStack {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Welcome back").font(Font.custom("Roboto-ThinItalic", size: 32))
                            Text("Sign up to continue")
                                .font(Font.custom("Roboto", size: 16))
                                .foregroundColor(Color(Colors.secondaryGray))
                        }
                        Spacer()
                    }
                    VStack(spacing: 100) {
                        VStack(spacing: 47) {
                            VStack(alignment: .leading, spacing: 17) {
                                HStack {
                                    Text("Username").font(Font.custom("Roboto", size: 20))
                                    Spacer()
                                }
                                TextField("Enter your email", text: $username)
                                    .cornerRadius(5.0)
                            }
                            VStack(alignment: .leading, spacing: 17) {
                                HStack {
                                    Text("Password").font(Font.custom("Roboto", size: 20))
                                    Spacer()
                                }
                                SecureField("Enter your password", text: $password)
                                    .cornerRadius(5.0)
                            }
                        }
                        VStack(spacing: 119) {
                            Button("Sign In") {
                                //
                            }
                            .buttonStyle(.automatic)
                            .frame(width: 293, height: 48)
                            .background(Color(Colors.backgroundRed))
                            .cornerRadius(5)
                            .font(Font.custom("Roboto-ThinItalic", size: 18))
                            .tint(Color(Colors.white))
                            
                            Button("Sign Up") {
                                //
                            }
                            .buttonStyle(.borderless)
                            .background(Color.white)
                            .cornerRadius(5)
                            .font(Font.custom("Roboto-BoldItalic", size: 18))
                            .tint(Color(Colors.backgroundRed))
                        }
                    }
                }
                
            }.padding(24)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
