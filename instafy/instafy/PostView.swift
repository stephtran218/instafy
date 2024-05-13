//
//  PostView.swift
//  instafy
//
//  Created by StudentAM on 5/13/24.
//

import SwiftUI

struct PostView: View {
    var playlistCover: [Image] = [
        Image("womenInStem"),
        Image("lockIn")
    ]
    
    var body: some View {
        VStack{
            Text("Post your playlist")
                .font(.system(size: 30))
            Button("Select your playlist"){
                
            }
            Image("womenInStem")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
            Image("lockIn")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()

        }
    }
}

#Preview {
    PostView(/*playlistCover: <#T##Image#>*/)
}
