//
//  RandomUsersTests.swift
//  RandomUsersTests
//
//  Created by specktro on 22/12/24.
//

import XCTest
@testable import RandomUsers

final class RandomUsersTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    func testUserModel() throws {
        let jsonData = getTestJSONData()
        
        do {
            _ = try JSONDecoder().decode(Response.self, from: jsonData)
        } catch {
            XCTFail("Failed to decode JSON into the model")
        }
    }

    private func getTestJSONData() -> Data {
        guard let path = Bundle.main.path(forResource: "randomUsers", ofType: "json") else {
            fatalError("randomUsers.json file not found")
        }
        
        let internalURL = URL(fileURLWithPath: path)
        return try! Data(contentsOf: internalURL)
    }
}
