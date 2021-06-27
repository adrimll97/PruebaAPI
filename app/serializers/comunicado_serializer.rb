class ComunicadoSerializer < ActiveModel::Serializer
  attributes :id, :creador_id, :receptor_id, :asunto, :contenido, :comunicado_anterior_id,
             :total_adjuntos

  def total_adjuntos
    object.adjuntos.count
  end
end
