class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_and_belongs_to_many :users
  embeds_many :upgrade_steps
  accepts_nested_attributes_for :upgrade_steps, allow_destroy: true
  
  field :title
  field :content
  field :published, type: Boolean
  field :time_savings, type: Integer
  field :money_savings, type: Integer
  field :quality_add, type: Integer
  
  default_scope ->{order(created_at: :desc)}
  scope :published, ->{where(published: true)}
  scope :unpublished, ->{ne(published:true)}
end
