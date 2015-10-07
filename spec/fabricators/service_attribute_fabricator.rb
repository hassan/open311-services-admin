Fabricator(:service_attribute) do
  service_definition
  variable             true
  code                 'ABC'
  datatype             [ :string, :number, :datetime, :text, :singlevaluelist, :multivaluelist ].sample
  required             false
  datatype_description 'datatype description'
  order                1
  description          'description'
end
