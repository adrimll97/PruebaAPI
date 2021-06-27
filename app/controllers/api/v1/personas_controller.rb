module Api
  module V1
    class PersonasController < ApplicationController
      def index
        render status: :ok, json: Persona.mayor_de_edad
      end
    end
  end
end
