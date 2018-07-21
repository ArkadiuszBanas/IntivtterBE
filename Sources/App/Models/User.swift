//
//  User.swift
//  App
//
//  Created by Arkadiusz Banaś on 18/07/2018.
//

import Vapor
import FluentMySQL
import Authentication

final class User: Codable {
    var id: Int?
    var username: String
    var password: String

    init(username: String, password: String) {
        self.username = username
        self.password = password
    }

    final class Public: Codable {
        var id: Int?
        var username: String

        init(id: Int?, username: String) {
            self.id = id
            self.username = username
        }
    }
}

extension User {
    var posts: Children <User, Post> {
        return children(\.authorId)
    }
}

extension User: MySQLModel { }
extension User: Migration { }
extension User: Content { }
extension User.Public: Content { }
extension User: Parameter { }

extension User {
    func convertToPublic() -> User.Public {
        return User.Public(id: id, username: username)
    }
}

extension Future where T: User {
    func convertToPublic() -> Future<User.Public> {
        return self.map(to: User.Public.self) { user in
            return user.convertToPublic()
        }
    }
}

extension User: BasicAuthenticatable {
    static let usernameKey: UsernameKey = \User.username
    static let passwordKey: PasswordKey = \User.password
}

extension User: TokenAuthenticatable {
    typealias TokenType = Token
}
