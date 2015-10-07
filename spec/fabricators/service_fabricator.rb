Fabricator(:service) do
  jurisdiction

  service_code    { sequence(:service_code, 101) }
  service_name    { Faker::Lorem.words(3).join(' ' ) }
  description     { Faker::Lorem.sentences(3).join(' ' ) }
  metadata        false
  service_type    1
  keywords        { Faker::Lorem.words(5).join(', ' ) }
  group           { Faker::Lorem.words(1) }
end
