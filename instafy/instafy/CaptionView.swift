//
//  CaptionView.swift
//  instafy
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct CaptionView: View {
    
    let darkGray = Color(red: 88/255, green: 88/255, blue: 88/255)
    
    @State var chosenPic: Image
    @State var writtenCaption : String
    @State var newCaption: String = ""

    var body: some View {
        VStack{
            Text("New Post")
                .font(.system(size: 22))
                .foregroundColor(.black)
                .bold()
                .padding(.top, -180)
            chosenPic
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

#Preview {
    CaptionView(chosenPic: Image("lockIn"), writtenCaption: "hi")
}
