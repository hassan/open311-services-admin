class Service < ActiveRecord::Base

  enum service_type: [ :realtime, :batch, :blackbox ]

  has_and_belongs_to_many :jurisdictions
end
