json.extract! pokemon, :id, :nombre, :descripcion, :imagen, :carta, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
