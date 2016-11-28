class UpgradeStep
  include Mongoid::Document
  
  embedded_in :posts
  
  field :description
  field :order, type: Integer
end
