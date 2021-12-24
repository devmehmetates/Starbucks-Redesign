//
//  LoginScreen.swift
//  Starbucks Redesign
//
//  Created by Mehmet Ateş on 12.12.2021.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isHide = false
    var body: some View {
        ZStack{
            Image("Login")
                .ignoresSafeArea()
            VStack(alignment:.leading){
                Spacer(minLength: UIScreen.main.bounds.height * 0.15)
                Image("Brand")
                Spacer(minLength: UIScreen.main.bounds.height * 0.05)
                VStack(alignment:.leading){
                    Text("Welcome back !")
                        .bold()
                        .font(.largeTitle)
                        .padding(.bottom)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor")
                        .font(.callout)
                        .fontWeight(.light)
                }
                VStack{
                    VStack(spacing:UIScreen.main.bounds.height * 0.02){
                        HStack{
                            TextField("Email", text: self.$email)
                        }.padding()
                            .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white))
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        ZStack{
                            if self.isHide{
                                HStack{
                                    SecureField("Password", text: self.$password)
                                }.padding()
                                    .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white))
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                                
                            }else{
                                HStack{
                                    TextField("Password", text: self.$password)
                                }.padding()
                                    .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white))
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                                
                            }
                            HStack{
                                Spacer()
                                Button {
                                    self.isHide.toggle()
                                } label: {
                                    Image(systemName: self.isHide ? "eye.slash" : "eye")
                                        .padding(.trailing)
                                }.foregroundColor(.primary)
                            }
                        }
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Forgot your password?")
                                .bold()
                        }.foregroundColor(.primary)
                    }
                    Spacer()
                    HStack{
                        Button {
                            
                        } label: {
                            Text("Login")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width * 0.9)
                        }.background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Primary-A")))
                    }
                }.padding(.top,UIScreen.main.bounds.height * 0.04)
                Spacer(minLength: UIScreen.main.bounds.height * 0.25)
            }.padding()
        }.preferredColorScheme(.light)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
