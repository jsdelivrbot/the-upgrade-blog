class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  include Mongoid::Timestamps
  
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :subscriptions
  
  has_secure_password
  
  # attr_accessor :first_name, :last_name, :email, :access_level, :password, :password_confirmation
  
  field :first_name
  field :last_name
  field :email
  field :access_level  
  field :password_digest

  validates_uniqueness_of :email
  
  def self.create_and_subscribe(email)
    begin
      user = User.create!(email: email, password: User.generate_random_password)
      user.update_attributes(subscription_ids: [Subscription.first.id])
      UserMailer.send_post(@user).deliver
    rescue
    end
  end
  
  def self.generate_random_password
    require 'securerandom'
    SecureRandom.hex
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end

end
