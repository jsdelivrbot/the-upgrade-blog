class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  include Mongoid::Timestamps
  
  has_and_belongs_to_many :posts
  
  # attr_accessor :first_name, :last_name, :email, :access_level, :password, :password_confirmation
  
  field :first_name
  field :last_name
  field :email
  field :access_level  
  field :password_digest
  
  has_secure_password
  
  validates_uniqueness_of :email
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
