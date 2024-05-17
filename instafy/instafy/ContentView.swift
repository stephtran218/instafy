//
//  ContentView.swift
//  instafy
//
//  Created by StudentAM on 5/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var postArray: [PostInfo] = [
        PostInfo(postedPic: Image("womenInStem"), postedPlaylistName: "women in stem", postedCaption: "hey girl hey"),
        PostInfo(postedPic: Image("bffr"), postedPlaylistName: "bffr", postedCaption: "bffr"),
        PostInfo(postedPic: Image("jrPromAye"), postedPlaylistName: "face card", postedCaption: "face card ayeeee"),
        PostInfo(postedPic: Image("gtfo"), postedPlaylistName: "GTFO", postedCaption: "30 MILLIONDO")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("𝗜𝗻𝘀𝘁𝗮𝗳𝘆 [◉°]")
                    .font(.system(size: 40))
                    .padding(.bottom, 140)
                Text("𝗪𝗲𝗹𝗰𝗼𝗺𝗲 𝗯𝗮𝗰𝗸")
                    .font(.system(size: 23))
                    .padding(.trailing, 200)
                    .padding(.top, -50)
                TextField("Email", text: $email)
                    .padding()
                    .border(Color.gray, width: 1)
                    .padding(.top, -20)
                SecureField("Password", text: $password)
                    .padding()
                    .border(Color.gray, width: 1)
                    .padding(.top, 10)
                NavigationLink(destination: HomePageView(posts: postArray)) {
                    Text("Login")
                        .padding()
                        .border(Color.black, width: 1)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 20)
                }
                Text("Forgot your password?")
                    .padding(.trailing, 180)
                    .padding(.top, 20)
            }
        }
        .padding()
    }
    
    func saveUserInfo(email: String, password: String) {
        // Implement saving user info logic here
    }
}

#Preview {
    ContentView()
}
