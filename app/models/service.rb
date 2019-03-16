class Service < ApplicationRecord
  belongs_to :service_type

  has_many :service_songs
  has_many :songs, through: :service_songs
  has_many :specials
  
  def label
    "#{service_type.name} - #{date}"
  end
end
