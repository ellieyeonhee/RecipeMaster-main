//
//  LoginView.swift
//  MealPrep
//
//  Created by Giulietta Lee on 24/4/2024.
//

import SwiftUI


struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Recipe")
                        .font(.custom("Futura-Bold", size: 40))
                        .padding([.top, .bottom])
                    Text("Master")
                        .font(.custom("Futura-Bold", size: 40))
                        .padding([.top, .bottom])
                        .foregroundColor(Color(red: 0.333, green: 0.780, blue: 0.509))
                }
                Text("Login to continue")
                    .font(.custom("Futura-Regular", size: 20))
                    .foregroundColor(Color(red: 0.474, green: 0.498, blue: 0.623))
                
                Spacer()
                
                TextField("Email", text: $username)
                    .padding()
                    .font(.custom("Futura-Regular", size: 18))
                    .frame(width: 300.0)
                    .frame(height: 70)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.horizontal, 4)
                    .overlay(RoundedRectangle(cornerRadius: 100.0).stroke(Color.white))
                    .background(Color(red: 0.898, green: 0.905, blue: 0.956))
                    .cornerRadius(100.0)
                    .padding(.bottom)
                    .onDisappear{
                        UserDefaults.standard.setValue(username, forKey: "username")
                    }
                
                
                TextField("Password", text: $password)
                    .padding()
                    .font(.custom("Futura-Regular", size: 18))
                    .frame(width: 300.0)
                    .frame(height: 70)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding([.horizontal], 4)
                    .overlay(RoundedRectangle(cornerRadius: 100.0).stroke(Color.white))
                    .background(Color(red: 0.898, green: 0.905, blue: 0.956))
                    .cornerRadius(100.0)
                
                    .onDisappear{
                        UserDefaults.standard.setValue(password, forKey: "password")
                    }
                
                
                Spacer()
                
                NavigationLink(destination: HomeView(username: username).navigationBarBackButtonHidden(true), label: {Text("Login")})
                        .font(.custom("Futura-Bold", size: 24))
                        .padding()
                        .frame(width: 300.0)
                        .frame(height: 70)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.horizontal], 4)
                        .overlay(RoundedRectangle(cornerRadius: 100.0).stroke(Color.white))
                        .foregroundColor(Color.white)
                        .background(Color(red: 0.333, green: 0.780, blue: 0.509))
                        .cornerRadius(100.0)
                        .padding()
                HStack{
                    Text("Don't have an account?")
                        .font(.custom("Futura-Regular", size: 20))
                        .foregroundColor(Color(red: 0.474, green: 0.498, blue: 0.623))
                        .padding(.bottom)
                    NavigationLink(destination: SignUpView().navigationBarBackButtonHidden(true), label: {Text("Sign Up")})
                        .font(.custom("Futura-Bold", size: 20))
                        .foregroundColor(Color(red: 0.333, green: 0.780, blue: 0.509))
                        .padding(.bottom)
                }
                
            }
            
        }
    }
}

#Preview {
    LoginView()
}
