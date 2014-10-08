class Persona < ActiveRecord::Base
	belongs_to :participante
	belongs_to :equipo
end
