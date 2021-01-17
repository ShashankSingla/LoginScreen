//
//  LoginView.swift
//  TribeCoach (iOS)
//
//  Created by shashank on 17/01/21.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    var body: some View {
        ZStack {
            if !isMacOS {
                VStack(spacing: 0) {
                    TopView()
                    Divider()
                        .frame(height: 5)
                        .background(Color.red)
                    BottomView()
                }
            } else {
                HStack(spacing: 0) {
                    TopView()
                    BottomView()
                }
            }
        }
        .frame(width: isMacOS ? screen.width / 2: nil, height: isMacOS ? screen.height / 2: nil)
        .edgesIgnoringSafeArea(.all)
        .environmentObject(loginViewModel)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct BottomView: View {
    @EnvironmentObject var loginViewModel: LoginViewModel
    var body: some View {
        ZStack {
            Color.black
            VStack(alignment: .leading, spacing: 30) {
                VStack(alignment: .leading) {
                    Text("Email")
                    
                    TextField("Enter Email", text: $loginViewModel.email)
                        .frame(height: 40)
                        .textFieldStyle(PlainTextFieldStyle())
                    Divider()
                        .frame(height: 1)
                        .background(Color.white)
                }
                .foregroundColor(.white)
                
                VStack(alignment: .leading) {
                    Text("Password")
                    TextField("Enter Password", text: $loginViewModel.password)
                        .frame(height: 40)
                        .overlay(
                            Button(action: {
                                
                            }, label: {
                                HStack(spacing: 4) {
                                    Image(systemName: "eye")
                                        .font(.caption)
                                    Text("Show")
                                        .font(.caption2)
                                }
                                .padding(.vertical)
                                .foregroundColor(Color.white)
                            })
                            .buttonStyle(PlainButtonStyle())
                            , alignment: .trailing
                        )
                        .textFieldStyle(PlainTextFieldStyle())
                    Divider()
                        .frame(height: 1)
                        .background(Color.white)
                }
                .foregroundColor(.white)
                Spacer()
                    .frame(height: 0)
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Color.gray
                        Text("Login")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                })
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .cornerRadius(25)
                .buttonStyle(PlainButtonStyle())
                
                Button(action: {
                    
                }, label: {
                    Text("Forgot your password?")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                })
                .buttonStyle(PlainButtonStyle())
                Spacer()
                HStack {
                    Text("Are you a new customer?")
                        .foregroundColor(.white)
                    Button(action: {
                        
                    }, label: {
                        Text("Sign Up")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(.red)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 30)
                
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 30)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct TopView: View {
    var body: some View {
        ZStack {
            Image("appBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: isMacOS ? screen.size.width / 4: nil,  height: isMacOS ? screen.size.height / 2: 200)
                .clipped()
                .overlay(
                    Rectangle()
                        .fill(Color.black)
                        .opacity(0.5)
                )
            VStack(spacing: 10) {
                Text("Login")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Signing using your email address")
                    .font(.caption2)
                    .fontWeight(.regular)
            }
        }
        .frame(height: 200)
        .foregroundColor(.white)
    }
}
