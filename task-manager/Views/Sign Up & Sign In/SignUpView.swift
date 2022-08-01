//
//  SignUpView.swift
//  task-manager
//
//  Created by Бернат Данила on 27.07.2022.
//

import SwiftUI

struct SignUpView: View {
    @State private var profileImage = Images.defaultProfilePhoto
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Welcome").font(Font.custom("Roboto-ThinItalic", size: 24))
                        Text("Sign up to continue")
                            .font(Font.custom("Roboto", size: 16))
                            .foregroundColor(Color(Colors.secondaryGray))
                    }
                    Spacer()
                }
                Image(profileImage)
                    .resizable()
                    .cornerRadius(50)
                    .padding(.all, 1)
                    .frame(width: 100, height: 100)
                    .background(Color(Colors.backgroundRed))
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .padding(20)
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
                    VStack(spacing: 55) {
                        Button("Sign Up") {
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
                
            }.padding(24)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
