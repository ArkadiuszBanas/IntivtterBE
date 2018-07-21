//
//  File.swift
//  App
//
//  Created by Arkadiusz Banaś on 18/07/2018.
//

import Vapor
import Authentication

struct UserController: RouteCollection {

    func boot(router: Router) throws {
        // Normal Routes
        let normalRoutes = router.grouped("api", "user")
        normalRoutes.post(User.self, use: createUserHandler)

        // Protected Routes
        let authMiddleware = User.basicAuthMiddleware(using: BCryptDigest())
        let protectedRoutes = normalRoutes.grouped(authMiddleware)
        protectedRoutes.post("login", use: loginHandler)
    }

    func createUserHandler(_ req: Request, user: User) throws -> Future<User.Public> {
        user.password = try BCrypt.hash(user.password)
        return user.save(on: req).convertToPublic()
    }

    func loginHandler(_ req: Request) throws -> Future<Token> {
        let user = try req.requireAuthenticated(User.self)
        let token = try Token.generate(for: user)

        return token.save(on: req)
    }
}
