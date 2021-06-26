class Comunicado < ApplicationRecord
  belongs_to :creador, class_name: "Persona"
  belongs_to :receptor, class_name: "Persona"
  belongs_to :comunicado_anterior, class_name: "Comunicado"
end
