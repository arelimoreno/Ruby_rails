class Factura < ActiveRecord::Base
	validates :nombre, :apellido, :identificacion, :telefono, :producto, :descripcion, :fecha, :cantidad, :iva, :valor, presence:true
	validates :identificacion, length:{in: 8..10}
	validates :telefono, length:{in: 7..10}
	validates :producto, inclusion:{in:%w(tarjetas cuadernos lapices borradores),
	message: "%{value} escriba alguna de las opciones que son tarjetas cuadernos lapices borradores "}
	validates :cantidad, numericality:{only_integer: true}
	validates :iva, :valor, :telefono, :identificacion, numericality:true
	validates :descripcion, length:{maximum:100}


end
