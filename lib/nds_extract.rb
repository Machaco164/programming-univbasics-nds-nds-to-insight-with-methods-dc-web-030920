$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 counter = 0 
 gross = 0
  while counter < director_data[:movies].length do
    gross += director_data[:movies][counter][:worldwide_gross]
    counter += 1
  end
 pp director_data
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  new_hash = {}
  row_index = 0 
    while row_index < nds.length do
      column_index = 0 
      grand_total = 0 
        while column_index < nds[row_index].length do 
          grand_total += gross_for_director(nds)
        end
      column_index += 1
    end 
    new_hash[:name] = grand_total
  row_index += 1
end
