class Micropost
  include Mongoid::Document
  belongs_to :user
  validates :content, length: {maximum: 140}
                    presence: true

  field :content, type: String
  field :user_id, type: Integer
end
