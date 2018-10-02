asdf = [{:title=>"Thanksgiving Tacos", :ingredients=>["Fresh corn tortillas", "Salsa de aguacate", "Deezthugs smokey turkey tacos"]}
{:title=>"Baja Fish Tacos", :ingredients=>["Baja white sauce", "Baja beer battered fish"]}
{:title=>"Traditional American Taco", :ingredients=>["Hard corn shells traditional us", "Black olives", "Ground beef traditional us"]}
{:title=>"Pulled Pork Chard and Pickled Onion Tacos", :ingredients=>["Pickled red onions", "Swiss chard"]}
{:title=>"Zucchini and Corn Tacos", :ingredients=>["Simple salsa verde", "Zucchini and corn filling"]}
{:title=>"Asian Style Tacos", :ingredients=>["Asian pickled vegetables", "Asian style tofu or pork marinade"]}
{:title=>"Asian Style Tacos", :ingredients=>["Asian pickled vegetables", "Asian style tofu or pork marinade"]}
{:title=>"Chicken Verde Corn and Black Bean Tacos with Pico de Gallo and Salsa de Aguacate", :ingredients=>["Salsa de aguacate", "Corn and black beans"]}
{:title=>"Steak Sweet Potato and Apple Tacos", :ingredients=>["Chopped steak"]}
{:title=>"Zucchini and Corn Tacos", :ingredients=>["Simple salsa verde", "Zucchini and corn filling"]}
{:title=>"Slow Cooker Chicken in Chile de Arbol sauce", :ingredients=>["Salsa de aguacate", "Slow cooked salsa verde chicken"]}
{:title=>"Morrocan Lamb Tacos", :ingredients=>["Moroccan lamb"]}
{:title=>"Chicken Verde Corn and Black Bean Tacos with Pico de Gallo and Salsa de Aguacate", :ingredients=>["Salsa de aguacate", "Slow cooked salsa verde chicken"]}
{:title=>"Slow Cooker Chicken in Chile de Arbol sauce", :ingredients=>["Salsa de aguacate", "Slow cooked salsa verde chicken"]}
{:title=>"Chorizo scramble aka Mandys LifeSaving Tacos", :ingredients=>["Fresh corn tortillas", "Simple salsa verde", "Chorizo"]}
{:title=>"Chorizo scramble aka Mandys LifeSaving Tacos", :ingredients=>["Fresh corn tortillas", "Simple salsa verde", "Chorizo"]}
{:title=>"Asian Style Tacos", :ingredients=>["Asian pickled vegetables", "Asian style tofu or pork marinade"]}
{:title=>"Chorizo Sweet Potato and Apple Tacos with Chipotle Sauce", :ingredients=>["Chipotle sauce", "Chorizo"]}
{:title=>"Traditional American Taco", :ingredients=>["Hard corn shells traditional us", "Black olives", "Ground beef traditional us"]}
{:title=>"Black Bean Potato and Onion Tacos", :ingredients=>["Garlic black beans"]}
{:title=>"Fish Tacos", :ingredients=>["Chipotle sauce", "Baked tilapia"]}
{:title=>"Pulled Pork Chard and Pickled Onion Tacos", :ingredients=>["Pickled red onions", "Swiss chard"]}
{:title=>"Traditional American Taco", :ingredients=>["Hard corn shells traditional us", "Black olives", "Ground beef traditional us"]}
{:title=>"Baja Fish Tacos", :ingredients=>["Baja white sauce", "Baja beer battered fish"]}
{:title=>"Pulled Pork Chard and Pickled Onion Tacos", :ingredients=>["Pickled red onions", "Swiss chard"]}
{:title=>"Thanksgiving Tacos", :ingredients=>["Fresh corn tortillas", "Salsa de aguacate", "Deezthugs smokey turkey tacos"]}
{:title=>"Steak Sweet Potato and Apple Tacos", :ingredients=>["Chopped steak"]}
{:title=>"Baja Fish Tacos", :ingredients=>["Baja white sauce", "Baja beer battered fish"]}
{:title=>"Vegan Red Cabbage Tacos", :ingredients=>["Garlic black beans"]}
{:title=>"Spaghetti Squash Tacos", :ingredients=>["Above average tomato sauce", "Spaghetti squash"]}
{:title=>"Thanksgiving Tacos", :ingredients=>["Fresh corn tortillas", "Salsa de aguacate", "Deezthugs smokey turkey tacos"]}
{:title=>"Asian Style Tacos", :ingredients=>["Asian cabbage slaw", "Asian style tofu or pork marinade"]}
{:title=>"Black Bean Potato and Onion Tacos", :ingredients=>["Garlic black beans"]}
{:title=>"Tempeh reuben tacos ", :ingredients=>["Pepper tempeh"]}
{:title=>"Sriracha Pork Tacos", :ingredients=>["Simple salsa verde", "Sriracha marinade", "Chopped pork"]}
{:title=>"Vegan Red Cabbage Tacos", :ingredients=>["Garlic black beans"]}
{:title=>"Spaghetti Squash Tacos", :ingredients=>["Above average tomato sauce", "Spaghetti squash"]}
{:title=>"Asian Style Tacos", :ingredients=>["Asian cabbage slaw", "Asian style tofu or pork marinade"]}
{:title=>"Steak Sweet Potato and Apple Tacos", :ingredients=>["Chopped steak"]}
{:title=>"Thanksgiving Tacos", :ingredients=>["Salsa de aguacate", "Deezthugs smokey turkey tacos"]}
{:title=>"Traditional American Taco", :ingredients=>["Hard corn shells traditional us", "Black olives", "Ground beef traditional us"]}
{:title=>"Swiss Chard Tacos", :ingredients=>["Swiss chard"]}
{:title=>"Tacos de Carnitas", :ingredients=>["Onions and cilantro", "Fat poached carnitas"]}
{:title=>"Swiss Chard Tacos", :ingredients=>["Swiss chard"]}
{:title=>"Swiss Chard Tacos", :ingredients=>["Swiss chard"]}
{:title=>"Chicken Verde Corn and Black Bean Tacos with Pico de Gallo and Salsa de Aguacate", :ingredients=>["Salsa de aguacate", "Corn and black beans"]}
{:title=>"Tempeh reuben tacos ", :ingredients=>["Pepper tempeh"]}
{:title=>"Zucchini and Corn Tacos", :ingredients=>["Simple salsa verde", "Zucchini and corn filling"]}
{:title=>"Pulled Pork Chard and Pickled Onion Tacos", :ingredients=>["Pickled red onions", "Swiss chard"]}
{:title=>"Morrocan Lamb Tacos", :ingredients=>["Moroccan lamb"]}]


asdf.each do |a|
  Recipe.create(title: a[:title])
  a[:ingredients].each {|i| Ingredient.create(name: i)}
end
