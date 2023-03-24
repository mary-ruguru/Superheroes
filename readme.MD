# SUPERHEROES
This is an API for tracking heroes and their superpowers.

## Tools Used
This project was built with the following tools:

- [Ruby ~ v3.1.+](https://www.ruby-lang.org/en/)
- Postman
- Visual Studio

# Running the application

Running the application is very straight forward. You can use the following steps to run the app.

- Git clone the repository

- Install required dependencies using bundle

      bundle install
      rails db:migrate db:seed

- Serve the application from the terminal

      rails s

## Models and Relationships

- A `Hero` has many `Power`s through `HeroPower`

- A `Power` has many `Hero`s through `HeroPower`

- A `HeroPower` belongs to a `Hero` and belongs to a `Power`

## Validations Included

Add validations to the `HeroPower` model:

- `strength` must be one of the following values: 'Strong', 'Weak', 'Average'

Add validations to the `Power` model:

- `description` must be present and at least 20 characters long

## Routes

Get /heros

JSON returned:

```
[
    {
        "id": 1,
        "name": "dennis",
        "super_name": "",
        "powers": [
            {
                "id": 1,
                "name": "flying",
                "description": "flying like superman"
            },
            {
                "id": 2,
                "name": "running",
                "description": "running like Kipchoge"
            }
        ]
    },
    {
        "id": 2,
        "name": "Kamala Khan",
        "super_name": "Ms. Marvel",
        "powers": [
            {
                "id": 2,
                "name": "running",
                "description": "running like Kipchoge"
            }
        ]
    },

```

GET /heros/:id

If the `Hero` exists, JSON data returned:

```
{
    "id": 2,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel",
    "powers": [
        {
            "id": 2,
            "name": "running",
            "description": "running like Kipchoge"
        }
    ]
}

```

If the `Hero` does not exist, the following  JSON data was returned, along with
the appropriate HTTP status code:

```
{
    "error": "Hero not found"
}

```

GET /powers

JSON returned: 

```
[
    {
        "id": 1,
        "name": "flying",
        "description": "flying like superman"
    },
    {
        "id": 2,
        "name": "running",
        "description": "running like Kipchoge"
    }
]

```

GET /powers/:id

If the `Power` exists, JSON data returned:

```
{
    "id": 1,
    "name": "flying",
    "description": "flying like superman"
}

```

If the `Power` does not exist, the following  JSON data was returned, along with
the appropriate HTTP status code:

```
{
    "error": "Power not found"
}

```

PATCH /powers/:id

If the `Power` exists and is updated successfully (passes validations), update
its description and return JSON data in the format below:

```
{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
```

If the `Power` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Power not found"
}

```

If the `Power` is **not** updated successfully (does not pass validations),
return the following JSON data, along with the appropriate HTTP status code:

```

{
  "errors": ["validation errors"]
}

```



# Authors

This project was contributed to by:
- [Maryann Ruguru](https://github.com/mary-ruguru/)