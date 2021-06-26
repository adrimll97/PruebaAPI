class Persona < ApplicationRecord
  MAYORÍA_DE_EDAD = 18

  scope :mayor_de_edad, -> { where('fecha_nacimiento < ?', Date.today - MAYORÍA_DE_EDAD.years) }

  has_many :comunicados, foreign_key: "creador_id"
end
