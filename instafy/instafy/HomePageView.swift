//
//  HomePageView.swift
//  instafy
//
//  Created by StudentAM on 5/10/24.
//

import SwiftUI

struct PostInfo{
    var postedPic: Image
    var postedPlaylistName: String
    var postedCaption: String
}

struct HomePageView: View {
    @State var newPost: Image
    @State var newPlaylistName: String
    @State var newCaption: String
    @State var posts: [Image] = []

    var body: some View {
        NavigationView {
            VStack {
                Text("𝗜𝗻𝘀𝘁𝗮𝗳𝘆 [◉°]")
                    .font(.system(size: 30))
                    .padding(.bottom, 2)
                ForEach(posts.indices, id: \.self) { i in
                    Button(action: {
                        handleClick(index: i)
                    }) {
                    }
                }
            }
        }
    }
    
    func handleClick(index: Int) {
        // Handle click on post at the given index
        // For example, navigate to post details view, etc.
    }
}


#Preview {
    HomePageView(newPost: Image("lockIn"), newPlaylistName: "", newCaption: "")
}
