class Sequence < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :secuencia, :fecha
end
