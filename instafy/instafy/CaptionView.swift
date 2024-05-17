//
//  CaptionView.swift
//  instafy
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct CaptionView: View {
        
    @State var finalPic: Image
    @State var writtenCaption : String
    @State var newCaption: String = ""
    @State private var isPosted: Bool = false

    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: HomePageView(posts: []), isActive: $isPosted){
                    EmptyView()
                }
                Text("New Post")
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                    .bold()
                    .padding(.top, -180)
                finalPic
                    .resizable()
                    .scaledToFill()
                    .frame(width: 280, height: 280)
                    .clipped()
                    .padding(.top, -130)
                Text(writtenCaption)
                    .padding()
                    .foregroundColor(.black)
                    .bold()
                TextField("Write your caption here...", text: $newCaption)
                    .frame(width: 280, height: 20)
                    .padding()
                    .foregroundColor(.black)
                    .border(Color.gray)
            }
        }
    }
    func postPlaylist(chosenPic: Image, playlistTitle: String){
        finalPic = chosenPic
        writtenCaption = playlistTitle
        newCaption = newCaption
        isPosted = true
    }
}

#Preview {
    CaptionView(finalPic: Image("lockIn"), writtenCaption: "LOCK IN")
}
