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
        PostInfo(postedPic: Image("womenInStem"), postedPlaylistName: String("women in stem"), postedCaption: String("hey girl hey")),
        PostInfo(postedPic: Image("bffr"), postedPlaylistName: String("bffr"), postedCaption: String("bffr")),
        PostInfo(postedPic: Image("jrPromAye"), postedPlaylistName: String("face card"), postedCaption: String("face card ayeeee")),
        PostInfo(postedPic: Image("gtfo"), postedPlaylistName: String("GTFO"), postedCaption: String("30 MILLIONDO"))
    ]
    
    var body: some View {
        
        
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
                NavigationLink(destination: HomePageView(postArray), label: {
                    Text("Login")
                        .padding()
                        .border(Color.black)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 20)
                        
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
