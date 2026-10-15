# csc340_crud_api
CRUD API for the Static Webpage assignment

# CharacterCosmos API

A REST API for viewing information about fictional characters from games and popular media, data stored in PostgreSQL

## Features

- Create, read, update, and delete characters
- Partial, case-insensitive search by name
- Filter by universe

View the project at [csc340-crud-api-n638.onrender.com/api/characters](https://csc340-crud-api-n638.onrender.com/api/characters), view start note at [csc340-crud-api-n638.onrender.com](https://csc340-crud-api-n638.onrender.com)

## Data Model

**Characters** (table `characters`)

| Field | Type | Rules |
|-------|------|-------|
| `id` | Long | Generated automatically |
| `name` | String | Required, not blank |
| `description` | String | Required, not blank |
| `debutDate` | Date (`yyyy-MM-dd`) | Required |
| `universe` | String | Required, not blank |

## API Reference

Base path: `/api/characters`

| Method | Path | Description | Success |
|--------|------|-------------|---------|
| GET | `/api/characters` | List all characters (supports filters below) | 200 |
| GET | `/api/characters/{id}` | Get one character | 200 |
| POST | `/api/characters` | Create a character | 201 |
| PUT | `/api/characters/{id}` | Replace a character's fields | 200 |
| DELETE | `/api/characters/{id}` | Delete a character | 204 |

### Query parameters for `GET /api/characters`

| Parameter | Example | Behavior |
|-----------|---------|----------|
| `name` | `?name=Fre` | Partial, case-insensitive match ("Fre" finds "Freddy") |
| `universe` | `?universe=Nightmare on Elm Street` | Exact match |
| both | `?name=Fre&universe=Nightmare on Elm Street` | Both filters must match |

Blank or missing parameters are ignored.

### Example request

```http
POST /api/characters
Content-Type: application/json

{
	"debutDate": "2026-09-07",
	"description": "A character from the hit hit Dosney Chanel show",
	"name": "Star Butterfly",
	"universe": "Star vs The Forces of Evil"
}
```

```http
PUT /api/characters/3
Content-Type: application/json

{
	"debutDate": "2026-09-07",
	"description": "A character from the hit Disney Channel show",
	"id": 3,
	"name": "Star Butterfly",
	"universe": "Star vs The Forces of Evil"
}
```

### Status codes

| Code | Meaning |
|------|---------|
| 200 | OK |
| 201 | Created |
| 204 | Deleted, no content |
| 400 | Validation failed or malformed request |
| 404 | Character with that id does not exist |
