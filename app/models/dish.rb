class Dish < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  belongs_to :cuisine

  # Indirect associations

  # Validations

end
