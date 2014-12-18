class Sale
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :tday,      type: Date
  field :item_name, type: String
  field :num,       type: Integer
  field :price,     type: Integer
  field :total,     type: Integer
  
  belongs_to :target
  belongs_to :item
end