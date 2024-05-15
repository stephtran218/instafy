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

    var body: some View {
        ZStack{
            darkGray
                .ignoresSafeArea()
            VStack{
                chosenPic
                    .resizable()
                Text(writtenCaption)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    CaptionView(chosenPic: Image("lockIn"), writtenCaption: "hi")
}
