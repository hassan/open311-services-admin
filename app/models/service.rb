class Service < ActiveRecord::Base

  enum service_type: [ :realtime, :batch, :blackbox ]

  belongs_to :jurisdiction
end
