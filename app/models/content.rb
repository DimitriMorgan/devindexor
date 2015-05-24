class Content
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String
  field :source_path, type: String
  field :download_path, type: String

  field :category, type: String
  field :sub_category, type: String

  field :note, type: Integer
  field :status, type: String

  index({ status: 1 })
end
