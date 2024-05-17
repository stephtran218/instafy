//
//  PostView.swift
//  instafy
//
//  Created by StudentAM on 5/13/24.
//

import SwiftUI

struct PostView: View {
    
    @State private var isLoaded: Bool = false
    @State private var imageToDisplay: Image = Image("")
    @State private var playlistName: String = ""

    var playlistItems: [(Image, String)] = [
        (Image("womenInStem"), "Women in Stem"),
        (Image("lockIn"), "LOCK IN"),
        (Image("justTeenGirl"), "i'm just a teenage girl")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Post your playlist")
                    .font(.system(size: 27))
                    .foregroundColor(.black)
                    .padding(.top, 50)
                    .padding(.bottom, 30)
                
                // Loop through playlist items
                ForEach(playlistItems.indices, id: \.self) { index in
                    Button(action: {
                        findImage(image: playlistItems[index].0, caption: playlistItems[index].1)
                    }, label: {
                        HStack {
                            playlistItems[index].0
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .clipped()
                            Text(playlistItems[index].1)
                                .foregroundColor(.black)
                                .padding(.leading, 10)
                        }
                        .padding(.vertical, 14)
                    })
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 38)
                }
                
                Spacer()
                
                NavigationLink(destination: CaptionView(finalPic: imageToDisplay, writtenCaption: playlistName), isActive: $isLoaded) {
                    EmptyView()
                }
            }
        }
    }
    
    func findImage(image: Image, caption: String) {
        imageToDisplay = image
        playlistName = caption
        isLoaded = true
    }
}

#Preview {
    PostView()
}
