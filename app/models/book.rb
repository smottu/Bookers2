class Book < ApplicationRecord


  validates :body, length: { in: 1..200 }

  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true


end
