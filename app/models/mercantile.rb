class Mercantile < ApplicationRecord
  belongs_to :user
  has_many :appearer, dependent: :destroy

  validates_presence_of :user_id, :acto, :observacion, :secuencia, :fecha
  
end
