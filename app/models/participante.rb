class Participante < ActiveRecord::Base
	belongs_to :proyecto
	has_one :persona
	has_one :rol
end
