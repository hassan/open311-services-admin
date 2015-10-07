class Service < ActiveRecord::Base

  enum service_type: [ :realtime, :batch, :blackbox ]

  belongs_to :jurisdiction
  has_one :service_definition, dependent: :destroy

  validates_presence_of :jurisdiction_id, :service_type
  validates_associated :service_definition

  after_create :add_service_definition

  private

  def add_service_definition
    create_service_definition(service_id: id, service_code: service_code)
  end
end
