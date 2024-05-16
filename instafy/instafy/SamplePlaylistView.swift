//
//  SamplePlaylistView.swift
//  instafy
//
//  Created by StudentAM on 5/13/24.
//

import SwiftUI

struct SamplePlaylistView: View {
    
    @State var playlistLikes: Int = 0
    
    let darkGray = Color(red: 88/255,  green: 88/255, blue: 88/255)
    @State private var showingSheet = false

    
    var body: some View {
        ZStack{
            darkGray
                .ignoresSafeArea()
            VStack{
                Image("womenInStem")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 260, height: 260)
                    .clipped()
                Text("Women in Stem")
                    .padding()
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .padding(.trailing, 185)
                    .padding(.bottom, -17)
                HStack {
                    Text("\(playlistLikes) Likes")
                        .foregroundColor(.white)
                        .padding(.trailing, 180)
                    Image("spotifyShuffle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, -20)
                    Image("Spotify-Play-Button")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .padding(.leading, 20)
                }
                Button(action: {
                    showingSheet.toggle()
                }) {
                    HStack {
                        Image("addBtn")
                            .resizable()
                            .frame(width: 40, height: 40)
                    Text("Add to this playlist")
                        .foregroundColor(.white)
                    }
                    .frame(width: 330, height: 50)
                    .padding(.trailing, 150)
                }
                .sheet(isPresented: $showingSheet){
                    AddSongsSheetView()
                }
                HStack{
                    Image("ultraviolence")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipped()
                    VStack{
                        Text("Money Power Glory")
                            .foregroundColor(.white)
                        Text("Lana Del Rey")
                            .padding(.trailing, 50)
                            .foregroundColor(.white)
                    }

                    .padding(.trailing, 125)

                }
                HStack{
                    Image("lover")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipped()
                    VStack{
                        Text("The Man")
                            .padding(.trailing, 70)
                            .foregroundColor(.white)
                        Text("Taylor Swift")
                            .padding(.trailing, 50)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 135)

                }
                HStack{
                    Image("eternalSunshine")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipped()
                    VStack{
                        Text("bye")
                            .padding(.trailing, 130)
                            .foregroundColor(.white)
                        Text("Ariana Grande")
                            .padding(.trailing, 50)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 115)

                }
                HStack{
                    Image("positions")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipped()
                    VStack{
                        Text("just like magic")
                            .padding(.trailing, 50)
                            .foregroundColor(.white)
                        Text("Ariana Grande")
                            .padding(.trailing, 50)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 115)

                }
                HStack{
                    Image("1989tv")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipped()
                    VStack{
                        Text("New Romantics (Taylor's Version)")
                            .padding(.trailing)
                            .foregroundColor(.white)
                        Text("Taylor Swift")
                            .padding(.trailing, 180)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 3)
                }
                
            }
        }
    }
}

#Preview {
    SamplePlaylistView()
}
