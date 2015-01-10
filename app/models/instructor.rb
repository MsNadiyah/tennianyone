class Instructor
  include Mongoid::Document

  field :highest_level, type: String
  field :blurb, type: String #blurb
  field :lesson_type, type: String
  field :lesson_ages, type: String
  field :lesson_speciality, type: String
  field :rate_hourly, type: Integer
  field :rate_clinic, type: Integer
  field :pro_availability, type: String

  # RELATIONSHIPS

  embedded_in :user
  
end


