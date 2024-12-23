//
//  Response.swift
//  RandomUsers
//
//  Created by specktro on 23/12/24.
//

import Foundation

struct Response: Decodable {
    let users: [User]
    
    enum CodingKeys: String, CodingKey {
        case users = "results"
    }
}
