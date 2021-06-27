class PersonaSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :fecha_nacimiento

  has_many :comunicados
end
