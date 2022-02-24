def all_cars 
  run_sql("SELECT * FROM cars ORDER BY id")
end

def users_cars(user_id)
  run_sql("SELECT * FROM cars WHERE user_id = $1", [user_id])
end

def get_car(id)
  run_sql("SELECT * FROM cars WHERE ID = $1", [id])[0]
end

def add_car(brand, model, year, user_id)
  run_sql("INSERT INTO cars(brand, model, year, user_id) VALUES ($1, $2, $3, $4)", [brand, model, year, user_id])
end

def update_car(id, brand, model, year)
  run_sql("UPDATE cars SET brand = $2, model = $3, year = $4 WHERE id = $1", [id, brand, model, year])
end

def delete_car(id)
  run_sql("DELETE FROM cars WHERE id = $1", [id])
end
