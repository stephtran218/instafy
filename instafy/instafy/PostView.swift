//
//  PostView.swift
//  instafy
//
//  Created by StudentAM on 5/13/24.
//

import SwiftUI

struct PostView: View {
    
    let darkGray = Color(red: 88/255, green: 88/255, blue: 88/255)
    @State private var isLoaded: Bool = false
    @State private var imageToDisplay: Image = Image("")
    @State private var imageCaption: String = ""

    var playlistItems: [(Image, String)] = [
        (Image("womenInStem"), "Women in Stem"),
        (Image("lockIn"), "LOCK IN"),
        (Image("justTeenGirl"), "i'm just a teenage girl")
    ]
    
    var body: some View {
        NavigationView{
            ZStack {
                darkGray
                    .ignoresSafeArea()
                VStack {
                    Text("Post your playlist")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .padding(.top, -70)
                    
                    // Loop through playlist items
                    ForEach(playlistItems.indices, id: \.self) { index in
                        
                        Button(action: {findImage(image: playlistItems[index].0, caption: playlistItems[index].1)}, label: {
                            HStack {
                                playlistItems[index].0
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 140, height: 140)
                                    .clipped()
                                Text(playlistItems[index].1)
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 10)
                        })
                        //                        NavigationLink(destination: CaptionView()) {
                        //                        Button{ action: {findImage(playlistItems[index].0, playlistItems[index].1)},
                        //                        label:
                        
                    }
                    .padding(.horizontal, 20)
                    
                    NavigationLink(destination: CaptionView(chosenPic: imageToDisplay, writtenCaption: imageCaption), isActive: $isLoaded){
                        EmptyView()
                    }
                }
            }
        }
    }
    func findImage(image: Image, caption: String){
        imageToDisplay = image
        imageCaption = caption
        isLoaded = true
    }
}



#Preview {
    PostView(/*playlistCover: <#T##Image#>*/)
}
