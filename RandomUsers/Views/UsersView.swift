//
//  UsersView.swift
//  RandomUsers
//
//  Created by specktro on 22/12/24.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List(userData.users) { user in
                HStack {
                    AsyncImage(url: URL(string: user.picture.thumbnail)) { image in
                        image
                            .clipShape(Circle())
                    } placeholder: {
                        Image(systemName: "person")
                            .frame(width: 50, height: 50, alignment: .center)
                    }
                    Text(user.fullName)
                }
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
