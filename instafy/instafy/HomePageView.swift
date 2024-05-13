//
//  HomePageView.swift
//  instafy
//
//  Created by StudentAM on 5/10/24.
//

import SwiftUI

struct HomePageView: View {
//    @Binding var feedArray: [Image]
    @State var posts: [Image] = []
    
    var body: some View {
        NavigationView{
            Text("𝗜𝗻𝘀𝘁𝗮𝗳𝘆 [◉°]")
                .font(.system(size: 30))
                .padding(.bottom, 2)
//            ForEach(posts.indices, id: \.self){i in
//                Button(action: { handleClick(index: i)}, label:
//                        PostView(post: posts[i])
//                    
//                })
                
            }
        }
    func handleClick(){
        
    }
        
}

#Preview {
    HomePageView(/*feedArray: .constant(posts)*/)
}
