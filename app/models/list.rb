class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks
end


# @list.movies.each do
# movie != list_id
# bookmark a les deux
# le lien entre list et movie de la façon du dessus
