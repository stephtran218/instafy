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
                            Text("Old Money")
                                .foregroundColor(.white)
                                .padding(.trailing, 67)
                            Text("Lana Del Rey")
                                .padding(.trailing, 50)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 130)

                    }
                    HStack{
                        Image("reputation")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("...Ready For It?")
                                .padding(.trailing, 150)
                                .foregroundColor(.white)
                            Text("Taylor Swift")
                                .padding(.trailing, 180)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 10)
                    }
                    HStack{
                        Image("bornToDIe")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("Radio")
                                .foregroundColor(.white)
                                .padding(.trailing, 100)
                            Text("Lana Del Rey")
                                .padding(.trailing, 50)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 135)
                    }
                    HStack{
                        Image("positions")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("motive (with Doja Cat")
                                .foregroundColor(.white)
                            Text("Ariana Grande")
                                .padding(.trailing, 50)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 120)

                    }
                    HStack{
                        Image("ultraviolence")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("Brooklyn Baby")
                                .foregroundColor(.white)
                                .padding(.trailing, 40)
                            Text("Lana Del Rey")
                                .padding(.trailing, 50)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 135)

                    }
                    HStack{
                        Image("1989tv")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("Blank Space (Taylor's Version)")
                                .padding(.trailing, 40)
                                .foregroundColor(.white)
                            Text("Taylor Swift")
                                .padding(.trailing, 180)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 15)
                    }
                    HStack{
                        Image("nellyF")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("Maneater")
                                .padding(.trailing, 200)
                                .foregroundColor(.white)
                            Text("Nelly Furtado")
                                .padding(.trailing, 170)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 10)

                    }
                    HStack{
                        Image("reputation")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("Don't Blame Me")
                                .padding(.trailing, 150)
                                .foregroundColor(.white)
                            Text("Taylor Swift")
                                .padding(.trailing, 180)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 10)
                    }
                    HStack{
                        Image("positions")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("test drive")
                                .foregroundColor(.white)
                                .padding(.trailing, 85)
                            Text("Ariana Grande")
                                .padding(.trailing, 50)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 125)

                    }
                    HStack{
                        Image("ultraviolence")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("West Coast")
                                .foregroundColor(.white)
                                .padding(.trailing, 60)
                            Text("Lana Del Rey")
                                .padding(.trailing, 50)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 135)

                    }
                    HStack{
                        Image("bornToDIe")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack{
                            Text("Born To Die")
                                .foregroundColor(.white)
                                .padding(.trailing, 60)
                            Text("Lana Del Rey")
                                .padding(.trailing, 50)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 135)
                    }
                }
            }

            //this is the title on top of screen
            .navigationBarTitle("Add to this playlist")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.white)
            .searchable(text: $searchText)


        }
    }
}

#Preview {
    AddSongsSheetView()
}
