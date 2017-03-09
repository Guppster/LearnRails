class User
  include Mongoid::Document
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true

  field :name, type: String
  field :email, type: String
end
