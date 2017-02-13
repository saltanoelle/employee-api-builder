100.times do
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    birthdate: Faker::Date.between(18.years.ago, 65.years.ago),
    ssn: Faker::Medical::SSN.ssn
    )
end

200.times do
  Address.create(
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
    employee_id: rand(1..100)
    )
end