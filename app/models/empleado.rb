class Empleado < ApplicationRecord
		validates_presence_of :Nombre, :NoCredencial, :Nombre, :Iniciales, :Direccion, :Colonia, :Poblacion, 
							  :Estado, :CP, :Telefono, :Celular, :Puesto, :Depto, :RFC, :CURP 
end
