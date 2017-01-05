class Admin::Product
  include Mongoid::Document
  field :name, type: String
  field :alias_name, type: String
  field :content, type: String
  field :price, type: Integer
  field :new_price, type: Integer
  has_many :images
end
