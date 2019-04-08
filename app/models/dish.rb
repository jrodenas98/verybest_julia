class Dish < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  belongs_to :cuisine

  # Indirect associations

  has_many   :venues,
             :through => :favorites,
             :source => :venue

  # Validations

end
