# This file should contain all the record creation needed to seeds the database with its default values.
# The data can then be loaded with the rails db:seeds command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Load all files from db/seeds in
alphabetical order Dir[File.join(Rails.root,'db','seeds','*.rb')].sort.each{|seeds| load seeds }