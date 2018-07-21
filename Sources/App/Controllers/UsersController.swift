//
//  UsersController.swift
//  App
//
//  Created by Arkadiusz Banaś on 21/07/2018.
//

import Vapor

struct UsersController: RouteCollection {

    func boot(router: Router) throws {
        let routes = router.grouped("api", "users")
        routes.get(use: getAllUsersHandler)
        routes.get(User.parameter, use: getHandler)
    }

    func getAllUsersHandler(_ req: Request) throws -> Future<[User.Public]> {
        return User.query(on: req).all().map(to: [User.Public].self) { users in
            return users.compactMap { $0.convertToPublic() }
        }
    }

    func getHandler(_ req: Request) throws -> Future<User.Public> {
        return try req.parameters.next(User.self).convertToPublic()
    }
}
