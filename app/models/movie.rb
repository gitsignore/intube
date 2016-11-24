class Movie < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :url, presence: true, length: { minimum: 5 }

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
