//
//  AccountSettingsView.swift
//  instafy
//
//  Created by StudentAM on 5/17/24.
//

import SwiftUI

struct AccountSettingsView: View {
    var body: some View {
        VStack{
            Text("𝗔𝗰𝗰𝗼𝘂𝗻𝘁 𝗦𝗲𝘁𝘁𝗶𝗻𝗴𝘀")
                .font(.system(size: 28))
            HStack {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 40))
                Text("@stephtheestallion")
                    .font(.system(size: 20))
            }
            Text("General Info")
                .font(.system(size: 20))
            
        }
    }
}

#Preview {
    AccountSettingsView()
}
