class Admin::Category
  include Mongoid::Document
  field :name, type: String
  field :alias_name, type: String
end
