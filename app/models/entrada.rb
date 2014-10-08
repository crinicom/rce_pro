class Entrada < ActiveRecord::Base
	belongs_to :proyecto
	has_one :tipo_entrada
	has_many :personas
end
