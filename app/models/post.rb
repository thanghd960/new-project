class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  
  belongs_to :moderator
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
  validates :content, presence: true
  validates :publish, presence: true

  def self.matching_title_or_content search
    where("title LIKE ? OR content LIKE ?","%#{search}%","%#{search}%")
  end
end
