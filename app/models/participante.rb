class Participante < ActiveRecord::Base
	#validates_uniqueness_of :persona_id, :scope => {:proyecto_id, :rol_id}
	belongs_to :proyecto
	has_one :persona
	has_one :rol
end
