class ServiceAttribute < ActiveRecord::Base

  enum datatype: [ :string, :number, :datetime, :text, :singlevaluelist, :multivaluelist ]
  belongs_to :service_definition
  has_many :service_attribute_values

  validates_presence_of :service_definition_id
end
