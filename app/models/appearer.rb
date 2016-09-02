class Appearer < ApplicationRecord
  belongs_to :user
  belongs_to :mercantile

  validates_presence_of :user_id, :mercantile_id, :apellidos, :nombres, :identificacion
  
end
