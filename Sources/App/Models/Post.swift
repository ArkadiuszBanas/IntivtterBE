//
//  Post.swift
//  App
//
//  Created by Arkadiusz Banaś on 18/07/2018.
//

import Vapor
import FluentMySQL

final class Post: MySQLModel {
    var id: Int?
    var authorId: User.ID
    var text: String

    init(text: String, authorId: User.ID) {
        self.text = text
        self.authorId = authorId
    }
}

extension Post {

    var author: Parent <Post, User> {
        return parent(\.authorId)
    }
}

extension Post: Migration { }
extension Post: Content { }
extension Post: Parameter { }
