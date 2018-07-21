import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    let userController = UserController()
    try router.register(collection: userController)

    let usersController = UsersController()
    try router.register(collection: usersController)

    let postController = PostController()
    try router.register(collection: postController)
}
