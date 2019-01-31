class Doctor < ApplicationRecord
  belongs_to :city
  has_many :speciality_doctors
  has_many :appointments
  has_many :specialities, through: :speciality_doctor
  has_many :patients, through: :appointments
end
