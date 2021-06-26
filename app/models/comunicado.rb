class Comunicado < ApplicationRecord
  belongs_to :creador, class_name: "Persona"
  belongs_to :receptor, class_name: "Persona"
  belongs_to :comunicado_anterior, class_name: "Comunicado"

  has_many :adjuntos, foreign_key: "comunicado_id"
end
