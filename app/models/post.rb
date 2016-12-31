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
  field :prerequisites
  
  default_scope ->{order(created_at: :desc)}
  scope :published, ->{where(published: true)}
  scope :unpublished, ->{ne(published:true)}
  
  def self.search(search_params)
    if search_params
      any_of({email: /#{search_params}/i}, {first_name: /#{search_params}/i}, {last_name: /#{search_params}/i})
    else
      scoped
    end
  end
  
  def self.filter(filter)
    
    if filter
      where(filter.to_sym.gt => 0)
    else
      scoped
    end
  end
end
