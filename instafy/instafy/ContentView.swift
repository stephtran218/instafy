//
//  ContentView.swift
//  instafy
//
//  Created by StudentAM on 5/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        @State var email: String = ""
        @State var password: String = ""
        
        NavigationView{
            VStack {
                Text("𝗜𝗻𝘀𝘁𝗮𝗳𝘆 [◉°]")
                    .font(.system(size: 40))
                    .padding(.bottom, 140 )
                Text("𝗪𝗲𝗹𝗰𝗼𝗺𝗲 𝗯𝗮𝗰𝗸")
                    .font(.system(size: 23))
                    .padding(.trailing, 200)
                    .padding(.top, -50)
                TextField("Email", text: $email)
                    .padding()
                    .border(Color.gray)
                    .padding(.top, -20)
                TextField("Password", text: $password)
                    .padding()
                    .border(Color.gray)
                    .padding(.top, 10)
                NavigationLink(destination: HomePageView(), label: {
                    Text("Login")
                        .padding()
                        .border(Color.black)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 20)
                        .onTapGesture {
                            saveUserInfo(email: email, password: password)
                        }
                })
                Text("Forgot your password?")
                    .padding(.trailing, 180)
                    .padding(.top, 20)
                
            }
        }
        .padding()
    }
    
    func saveUserInfo(email: String, password: String){
        
    }
}

#Preview {
    ContentView()
}
