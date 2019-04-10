class Cliente < ApplicationRecord
	has_many :cliente_contactos

	accepts_nested_attributes_for :cliente_contactos, reject_if: :all_blank, allow_destroy: true

	validates_presence_of :nombre_fiscal, :nombre_comercial, :rfc, :codigo_postal, :telefono_oficina, :correo
end
