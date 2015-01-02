class Proyecto < ActiveRecord::Base
	has_many :relacions
	has_many :entradas
	has_one :estado
	has_many :fechas
	has_many :participantes
end
