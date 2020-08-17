module OrdenTrabajosHelper

	def cadenatovector(cadena)
		if cadena == nil
			return cadena
		else
			cadena = cadena.gsub "[", ""
			cadena = cadena.gsub "]", ""
			cadena = cadena.gsub '"', ""
			cadena = cadena.gsub "'", ""
			cadena = cadena.gsub " ", ""
			return cadena.split(",")
		end
	end

end
