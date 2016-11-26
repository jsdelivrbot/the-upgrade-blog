class User
  include Mongoid::Document
  
  has_and_belongs_to_many :posts
  
  field :first_name
  field :last_name
  field :access_level  
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
