class Doctor < ActiveRecord::Base
  has_many :interns # house.interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
end
