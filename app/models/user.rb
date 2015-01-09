class User
  include Mongoid::Document

  field :name, type: String
  field :user_type, type: String
  field :email, type: String
  field :zip, type: Integer
  field :gender, type: String
  field :password_digest, type: String


  # RELATIONSHIPS 

  embeds_one :instructor
  embeds_one :player

end
