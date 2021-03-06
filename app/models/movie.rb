class Movie < ApplicationRecord
  validates :director, length: { minimum: 2 }
  validates :plot, presence: true
  validates :year, numericality: { less_than: 2022 }
  validates :english, presence: true

  has_many :actors
  has_many :movie_genres 
  has_many :genres, through: :movie_genres
end
