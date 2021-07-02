class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :director, :english, default: :true

  has_many :actors
end
