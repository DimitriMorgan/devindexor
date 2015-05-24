class Category
  include Mongoid::Document
  field :name, type: String
  field :img_path, type: String
  field :img_alt, type: String
  field :status, type: Integer
end
