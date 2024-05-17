//
//  ContentView.swift
//  instafy
//
//  Created by StudentAM on 5/10/24.
//

import SwiftUI

struct UserInfo{
    
}

struct ContentView: View {
    //this var will store the user's email
    @State var email: String = ""
    //this var will store the user's password
    @State var password: String = ""
    //this var is the array containing info about the post (pic, playlist name, and caption
    @State var postArray: [PostInfo] = [
        PostInfo(postedPic: Image("womenInStem"), postedPlaylistName: "women in stem", postedCaption: "hey girl hey"),
        PostInfo(postedPic: Image("bffr"), postedPlaylistName: "bffr", postedCaption: "bffr"),
        PostInfo(postedPic: Image("jrPromAye"), postedPlaylistName: "face card", postedCaption: "face card ayeeee"),
        PostInfo(postedPic: Image("gtfo"), postedPlaylistName: "GTFO", postedCaption: "30 MILLIONDO")
    ]
    
    var body: some View {
        //this is in nav view bc the log in button will take user to the feed page
        NavigationView {
            VStack {
                //this display the app's name
                Text("𝗜𝗻𝘀𝘁𝗮𝗳𝘆 [◉°]")
                    .font(.system(size: 40))
                    .padding(.bottom, 140)
                //this displays a welcome message for user logging back in
                Text("𝗪𝗲𝗹𝗰𝗼𝗺𝗲 𝗯𝗮𝗰𝗸")
                    .font(.system(size: 23))
                    .padding(.trailing, 200)
                    .padding(.top, -50)
                //this text field has a placeholder saying "email" so user knows to type in their email
                TextField("Email", text: $email)
                    .padding()
                    .border(Color.gray, width: 1)
                    .padding(.top, -20)
                //this secure field has a placeholder saying "password" so user knows to type in their password
                SecureField("Password", text: $password)
                    .padding()
                    .border(Color.gray, width: 1)
                    .padding(.top, 10)
                //this nav link displaying the login button will take the user to the feed(home page) once they successfully signed in
                NavigationLink(destination: HomePageView(posts: postArray)) {
                    Text("Login")
                        .padding()
                        .border(Color.black, width: 1)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 20)
                }
                //this is an option for user to reset their password if they forgot it
                Text("Forgot your password?")
                    .padding(.trailing, 180)
                    .padding(.top, 20)
            }
        }
        .padding()
    }
    
    //this function's purpose is to save the user's email and password
    func saveUserInfo(email: String, password: String) {
        // Implement saving user info logic here
    }
}

#Preview {
    ContentView()
}
