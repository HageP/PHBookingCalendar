class Event < ApplicationRecord
  # Direct associations

  belongs_to :lease

  belongs_to :status

  belongs_to :tenant

  belongs_to :apartment, class_name: "Apartment", foreign_key: "resourceId"

  # Indirect associations

  # Validations
  validates :title, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
  validates :resourceId, :presence => true

end
