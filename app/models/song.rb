class Song < ApplicationRecord
  belongs_to :hymn_book
  validates :page_number, uniqueness: { scope: :hymn_book }
end
