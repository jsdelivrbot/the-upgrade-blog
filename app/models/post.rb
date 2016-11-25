class Post
  include Mongoid::Document
  
  has_and_belongs_to_many :authors
  
  field :title
  field :date, type: Date
  field :content
end
