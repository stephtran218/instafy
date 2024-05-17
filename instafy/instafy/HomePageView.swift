//
//  HomePageView.swift
//  instafy
//
//  Created by StudentAM on 5/10/24.
//

import SwiftUI

//this struct holds all the info for each post
struct PostInfo {
    var postedPic: Image
    var postedPlaylistName: String
    var postedCaption: String
}

struct HomePageView: View {
    @State var posts: [PostInfo]

    var body: some View {
        NavigationView {
            VStack {
                Text("𝗜𝗻𝘀𝘁𝗮𝗳𝘆 [◉°]")
                    .font(.system(size: 30))
                    .padding(.bottom, 30)
                
                ScrollView {
                    PostsCustomView(posts: posts)
                        .padding(.horizontal)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomePageView(posts: [
        PostInfo(postedPic: Image("womenInStem"), postedPlaylistName: "women in stem", postedCaption: "hey girl hey"),
        PostInfo(postedPic: Image("bffr"), postedPlaylistName: "bffr", postedCaption: "bffr"),
        PostInfo(postedPic: Image("jrPromAye"), postedPlaylistName: "face card", postedCaption: "face card ayeeee"),
        PostInfo(postedPic: Image("gtfo"), postedPlaylistName: "GTFO", postedCaption: "30 MILLIONDO")
    ])
}
