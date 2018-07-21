
# User Section
## `POST` /api/user/

_Descirption:_ Creates user

### Request:

```
{
"username": "Oskarek89",
"password": "qwerty"
}
```

***

## `POST` /api/user/login/

_Description:_ Generates and returns token for proper credentials

### Resoponse:
```
{
"token": "asd87a97d56as576da565da7s"   
}
```

***
***
# Users Section
## `GET` /api/users/

_Description:_ Returns all users

### Response:
```
[
{
"id": 1,
"username": "Arek"
},
{
"id": 2,
"username": "Tomkowz"
},
{
"id": 3,
"username": "Elfik"
},
]
```
***

## `GET` /api/users/{id}

_Description:_ Returns user data for specific id

### Response:

```
{
"id": 2,
"username": "MichauBialek"
}
```
***
***

# Posts Section
## `POST` /api/posts/

_Description:_ Creates post for authenticated user.

### Request:

+ Headers:  `Authorization`: Bearer <user token>
### Response:
```
{
"text": "Mój stary to prawdziwy fanatyk wędkarstwa...",
"authorId": 2
}
```

***

## `GET` /api/posts/user/{id}

_Description:_ Returns posts for specific user id.

### Response:

```
[
{
"id": 3,
"authorId": 1,
"text": "Michał Białek kończył nocną zmianę..."
}
]
```
***
