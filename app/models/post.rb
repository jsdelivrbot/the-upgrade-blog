class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_and_belongs_to_many :users
  
  field :title
  field :content
  field :published, type: Boolean
  field :time_savings, type: Range
  field :money_savings, type: Range
  field :quality_add, type: Range
  
  default_scope ->{order(created_at: :desc)}
  scope :published, ->{where(published: true)}
  scope :unpublished, ->{ne(published:true)}
end
