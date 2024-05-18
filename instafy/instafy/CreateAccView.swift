//
//  CreateAccView.swift
//  instafy
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct PersonalInfo{
    var firstName: String
    var lastName: String
    var email: String
    var userName: String
    var password: String
}

struct CreateAccView: View {
    
    @State private var personalInfo = PersonalInfo(firstName: "", lastName: "", email: "", userName: "", password: "")
    @State var postArray: [PostInfo] = [
        PostInfo(postedPic: Image("womenInStem"), postedPlaylistName: "women in stem", postedCaption: "hey girl hey"),
        PostInfo(postedPic: Image("bffr"), postedPlaylistName: "bffr", postedCaption: "bffr"),
        PostInfo(postedPic: Image("jrPromAye"), postedPlaylistName: "face card", postedCaption: "face card ayeeee"),
        PostInfo(postedPic: Image("gtfo"), postedPlaylistName: "GTFO", postedCaption: "30 MILLIONDO")
    ]
    var body: some View {
        
        
        NavigationView{
            VStack {
                Text("𝗜𝗻𝘀𝘁𝗮𝗳𝘆 [◉°]")
                    .font(.system(size: 40))
                    .padding(.top, -100 )
                    .foregroundColor(.black)
                Text("Create An Account")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                    .font(.title)
                    .bold()
                    .padding(.bottom, 20)
                TextField("First Name", text:$personalInfo.firstName)
                    .padding()
                    .border(Color.gray)
                TextField("Last Name", text: $personalInfo.lastName)
                    .padding()
                    .border(Color.gray)
                TextField("Email", text: $personalInfo.email)
                    .padding()
                    .border(Color.gray)
                TextField("Username", text: $personalInfo.userName)
                    .padding()
                    .border(Color.gray)
                SecureField("Password", text: $personalInfo.password)
                    .padding()
                    .border(Color.gray)
                NavigationLink(destination: HomePageView(posts: postArray)) {
                    Text("Login")
                        .padding()
                        .border(Color.black, width: 1)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 20)
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    CreateAccView()
}
