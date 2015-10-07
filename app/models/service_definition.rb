class ServiceDefinition < ActiveRecord::Base

  belongs_to :service
  has_many :service_attributes

  validates_presence_of :service_id, :service_code
end
