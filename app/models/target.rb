class Target
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :month,   type: String
  field :amount,  type: Integer
  
  has_many :sales
end