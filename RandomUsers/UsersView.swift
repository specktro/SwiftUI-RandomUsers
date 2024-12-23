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
            VStack {
                Text("Raw JSON Data:")
                ScrollView {
                    Text(userData.users)
                }
            }
            .padding()
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
