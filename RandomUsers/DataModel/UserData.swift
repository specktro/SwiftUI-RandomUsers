//
//  UserData.swift
//  RandomUsers
//
//  Created by specktro on 22/12/24.
//

import SwiftUI

@MainActor
final class UserData: ObservableObject {
    @Published var users: [User] = []
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        } catch {
            print(error)
        }
    }
}
