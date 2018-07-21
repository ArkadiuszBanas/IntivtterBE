# `POST` /api/user/

**

### Request:

+ Headers:
    + `Authorization`: Basic Og==
    
    *For more information check [[Headers]]*

+ Url Params:
    No specific query parameters needed.

+ Body:
```
{
    "username": "Oskarek89",
    "password": "qwerty"
}
```

***


### Response:

+ Status: **200**

+ Body:
```
{
    "id": 11,
    "username": "Oskarek89"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 10,
    "username": "LubieSernik"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 9,
    "username": "Elfik"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry 'm__b' for key 'username'"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry 'm__b' for key 'username'"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 6,
    "username": "m__b"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry 'Arek' for key 'username'"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 4,
    "username": "Arek"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 3,
    "username": "Tobol"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 2,
    "username": "tomkowzzzzzz"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 1,
    "username": "tomkowzz"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry '0' for key 'PRIMARY'"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 0,
    "username": "tomkowzzzzzzzz"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry '' for key 'PRIMARY'"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 0,
    "username": "tomkowzzzzz"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry '' for key 'PRIMARY'"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "id": 0,
    "username": "tomkowzzz"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry '' for key 'PRIMARY'"
}
```
***
### Response:

+ Status: **0**

+ Body:
```

```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "tomkowzzz"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "tomkowzzz"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "tomkowz"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "tomkowz"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "tomkowz"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry '' for key 'PRIMARY'"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Duplicate entry '' for key 'PRIMARY'"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "franek"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Something went wrong."
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "franek"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "franek"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "franek"
}
```
***
### Response:

+ Status: **200**

+ Body:
```
{
    "username": "franek"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Table 'iosdev_intivtter.User' doesn't exist"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Unknown column 'password' in 'field list'"
}
```
***
### Response:

+ Status: **0**

+ Body:
```

```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Unknown column 'password' in 'field list'"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Unknown column 'username' in 'field list'"
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Unknown column 'username' in 'field list'"
}
```
***
### Response:

+ Status: **400**

+ Body:
```
{
    "error": true,
    "reason": "Value required for key 'password'."
}
```
***
### Response:

+ Status: **400**

+ Body:
```
{
    "error": true,
    "reason": "Value required for key 'username'."
}
```
***
### Response:

+ Status: **400**

+ Body:
```
{
    "error": true,
    "reason": "Value required for key 'username'."
}
```
***
### Response:

+ Status: **400**

+ Body:
```
{
    "error": true,
    "reason": "Value required for key 'username'."
}
```
***
### Response:

+ Status: **400**

+ Body:
```
{
    "error": true,
    "reason": "Value required for key 'username'."
}
```
***
### Response:

+ Status: **400**

+ Body:
```
{
    "error": true,
    "reason": "Value required for key 'username'."
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Request does not have a content type."
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Request does not have a content type."
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Request does not have a content type."
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Request does not have a content type."
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Request does not have a content type."
}
```
***
### Response:

+ Status: **500**

+ Body:
```
{
    "error": true,
    "reason": "Request does not have a content type."
}
```
***
### Response:

+ Status: **0**

+ Body:
```

```
***
### Response:

+ Status: **404**

+ Body:
```
Not found
```
***
### Response:

+ Status: **404**

+ Body:
```
Not found
```
***
### Response:

+ Status: **404**

+ Body:
```
Not found
```
***
### Response:

+ Status: **404**

+ Body:
```
Not found
```
***
### Response:

+ Status: **404**

+ Body:
```
Not found
```
***
### Response:

+ Status: **404**

+ Body:
```
Not found
```
***
### Response:

+ Status: **404**

+ Body:
```
Not found
```
***
### Response:

+ Status: **0**

+ Body:
```

```
***


