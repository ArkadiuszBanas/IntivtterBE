//
//  PostController.swift
//  App
//
//  Created by Arkadiusz Banaś on 20/07/2018.
//

import Vapor
import Authentication

struct PostController: RouteCollection {

    func boot(router: Router) throws {

        // Normal routes
        let normalRoute = router.grouped("api", "posts")
        normalRoute.get("user", User.parameter, use: getPostForUserHandler)

        // Token proteceted routes
        let protectedRoute = normalRoute.grouped(User.tokenAuthMiddleware(), User.guardAuthMiddleware())
        protectedRoute.post(PostCreateData.self, use: createPostHandler)

    }

    func getPostForUserHandler(_ req: Request) throws -> Future<[Post]> {
        return try req.parameters.next(User.self).flatMap(to: [Post].self) { user in
            try user.posts.query(on: req).all()
        }
    }

    func createPostHandler(_ req: Request, data: PostCreateData) throws -> Future<Post> {
        let user = try req.requireAuthenticated(User.self)
        let post = try Post(text: data.text, authorId: user.requireID())
        return post.save(on: req)
    }
}

struct PostCreateData: Content {
    let text: String
}
