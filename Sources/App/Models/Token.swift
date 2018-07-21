//
//  Token.swift
//  App
//
//  Created by Arkadiusz Banaś on 18/07/2018.
//

import Vapor
import FluentMySQL
import Authentication

final class Token: Codable {
    var id: Int?
    var token: String
    var userID: User.ID

    init(token: String, userID: User.ID) {
        self.token = token
        self.userID = userID
    }
}

extension Token {
    static func generate(for user: User) throws -> Token {
        let random = try CryptoRandom().generateData(count: 16)
        return try Token(token: random.base64EncodedString(), userID: user.requireID())
    }
}

extension Token: Authentication.Token {
    static let userIDKey: UserIDKey = \Token.userID
    typealias UserType = User
}

extension Token: BearerAuthenticatable {
    static let tokenKey: TokenKey = \Token.token
}

extension Token: MySQLModel { }
extension Token: Migration { }
extension Token: Content { }
