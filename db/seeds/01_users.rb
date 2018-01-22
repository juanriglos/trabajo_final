#frozen_string_literal:true puts 'BEGIN Seed Users' puts '_________'

admin= User.where(email:'admin@admin.com').first_or_initialize do |user|
  user.role = 'admin'
  user.password ='111'
  user.password_confirmation = '111'
end

if admin.new_record?
  admin.save!
  puts "User created => #{admin.email}"
end

puts "User count: #{User.count}"

puts '_______'

puts 'END Seed Users'