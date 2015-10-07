class ServiceAttributeValue < ActiveRecord::Base

  belongs_to :service_attribute

  validates_presence_of :service_attribute_id, :key, :name
end
