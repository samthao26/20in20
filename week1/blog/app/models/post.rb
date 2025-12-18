  class Post < ApplicationRecord
  belongs_to :user
  # active storage from rails 5
  has_one_attached :thumbnail
  has_one_attached :banner
  # Action text from rails 6
  has_rich_text :body
  validates :title, length: { minimum: 5 }
  validate :body_length

  def body_length
    if body.to_plain_text.length < 25
      errors.add(:body, "needs atleast 5 characters")
    end
  end
  def optimized_image(image, x,y)
    image.variant(resize_to_fill: [x,y]).processed
  end

end
