class Cliente < ApplicationRecord
	has_many :cliente_contactos

	accepts_nested_attributes_for :cliente_contactos, reject_if: lambda {|attrs| attrs['nombre'].blank?} 

	validates_presence_of :nombre_fiscal, :nombre_comercial, :rfc, :codigo_postal, :telefono_oficina, :correo
end
