Fabricator(:service_attribute_value) do
  service_attribute
  key                  { Faker::Lorem.words(1) }
  name                 { Faker::Lorem.words(1) }
end
