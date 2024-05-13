//
//  SamplePlaylistView.swift
//  instafy
//
//  Created by StudentAM on 5/13/24.
//

import SwiftUI

struct SamplePlaylistView: View {
    
    let darkGray = Color(red: 88/255,  green: 88/255, blue: 88/255)
    
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
                HStack {
                    Spacer()
                    Image("spotifyShuffle")
                        .resizable()
                        .frame(width: 40, height: 40)

                    Image("Spotify-Play-Button")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 20)
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
            }
        }
    }
}

#Preview {
    SamplePlaylistView()
}
