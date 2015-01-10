class User
  include Mongoid::Document

  field :name, type: String
  field :user_type, type: String
  field :email, type: String
  field :zip, type: Integer
  field :gender, type: String
  field :password_digest, type: String

  # To facilitate CarrierWave and the creation of Avaatars
  mount_uploader :image, AvatarUploader

  # Creates a setter function for the "password" field (which isn't stored in the database as a string)
  attr_reader :password

  # RELATIONSHIPS 

  embeds_one :instructor
  embeds_one :player

  # METHODS

  def password=(unencrypted_password)
    @password = unencrypted_password
    self.password_digest = BCrypt::Password.create(unencrypted_password) 
  end

  def authenticate(unencrypted_password)
    # If the stored password, once unencrypted matches the unecrypted password just entered
    if BCrypt::Password.new(self.password_digest) == unencrypted_password
      # return the user's information
      return self
    else
      # reload the form
      return false
    end  
  end

  # VALIDATIONS

  # validates the user fields
  validates :name, presence: true
  validates :user_type, presence: true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :zip, presence: true, length: { is: 5 } 
  validates :gender, presence: true
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true

end
