def all_cars 
  run_sql("SELECT * FROM cars ORDER BY id")
end

def get_car(id)
  run_sql("SELECT * FROM cars WHERE ID = $1", [id])[0]
end

def add_car(brand, model, year)
  run_sql("INSERT INTO cars(brand, model, year) VALUES ($1, $2, $3)", [brand, model, year])
end

def update_car(id, brand, model, year)
  run_sql("UPDATE cars SET brand = $2, model = $3, year = $4 WHERE id = $1", [id, brand, model, year])
end

def delete_car(id)
  run_sql("DELETE FROM cars WHERE id = $1", [id])
end
