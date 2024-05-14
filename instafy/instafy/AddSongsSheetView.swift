//
//  AddSongsSheetView.swift
//  instafy
//
//  Created by StudentAM on 5/14/24.
//

import SwiftUI

struct AddSongsSheetView: View {
    
    let darkGray = Color(red: 88/255, green: 88/255, blue: 88/255)
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                darkGray
                    .ignoresSafeArea()
                VStack{
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

                }
            }

            //this is the title on top of screen
            .navigationTitle("Add to this playlist")
                .foregroundColor(.white)
            //this makes the title display smaller and centered on top of screen
            .navigationBarTitleDisplayMode(.inline)
            //this creates the search bar for user to search for songs
            .searchable(text: $searchText)
            .foregroundColor(.white) // Set foreground color to white for text


        }
    }
}

#Preview {
    AddSongsSheetView()
}
