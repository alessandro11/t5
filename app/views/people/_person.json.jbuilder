json.extract! person, :id, :last_name, :first_name, :address, :city, :created_at, :updated_at
json.url person_url(person, format: :json)
