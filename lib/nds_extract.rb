$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  director_index = 0
  director_total_gross = {}

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    director_total_gross[director_name] = 0
# ask question about line above - can you look up smthng other than an integer when calling an array?
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      director_total_gross[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    director_index += 1
  end

director_total_gross
end
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!


  
