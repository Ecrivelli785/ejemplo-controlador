module OrdenTrabajosHelper

	def cadenatovector(cadena)
		if cadena == nil
      return [""]
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
