//
//  PostsCustomView.swift
//  instafy
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct PostsCustomView: View {
    var posts: [PostInfo]

    var body: some View {
        VStack {
            ForEach(posts.indices, id: \.self) { i in
                VStack {
                    if posts[i].postedPlaylistName == "women in stem" {
                        NavigationLink(destination: SamplePlaylistView()) {
                            VStack {
                                HStack {
                                    Image(systemName: "person.circle.fill")
                                    Text("Random Username")
                                }
                                .padding(.leading, 10)
                                .padding(.top, 10)

                                posts[i].postedPic
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 250, height: 250)
                                    .clipped()

                                HStack {
                                    Image(systemName: "heart")
                                    Image(systemName: "bubble.right")
                                }
                                .padding(.leading, 10)
                                .padding(.top, 5)

                                Text(posts[i].postedCaption)
                                    .padding(.leading, 10)
                                    .padding(.bottom, 10)
                            }
                        }
                    } else {
                        VStack {
                            HStack {
                                Image(systemName: "person.circle.fill")
                                Text("Random Username")
                            }
                            .padding(.leading, 10)
                            .padding(.top, 10)

                            posts[i].postedPic
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 250)
                                .clipped()

                            HStack {
                                Image(systemName: "heart")
                                Image(systemName: "bubble.right")
                            }
                            .padding(.leading, 10)
                            .padding(.top, 5)

                            Text(posts[i].postedCaption)
                                .padding(.leading, 10)
                                .padding(.bottom, 10)
                        }
                    }
                }
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    PostsCustomView(posts: [
        PostInfo(postedPic: Image("womenInStem"), postedPlaylistName: "women in stem", postedCaption: "hey girl hey"),
        PostInfo(postedPic: Image("bffr"), postedPlaylistName: "bffr", postedCaption: "bffr"),
        PostInfo(postedPic: Image("jrPromAye"), postedPlaylistName: "face card", postedCaption: "face card ayeeee"),
        PostInfo(postedPic: Image("gtfo"), postedPlaylistName: "GTFO", postedCaption: "30 MILLIONDO")
    ])
}
