class Fecha < ActiveRecord::Base
	belongs_to :proyecto
	has_one :hito
end
