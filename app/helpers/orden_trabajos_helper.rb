module OrdenTrabajosHelper

	def cadenatovector(cadena)
		cadena = cadena.gsub "[", ""
		cadena = cadena.gsub "]", ""
		cadena = cadena.gsub '"', ""
		cadena = cadena.gsub "'", ""
		cadena = cadena.gsub " ", ""
		return cadena.split(",")
	end

	def listadopost
		listado = ["uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez","once","doce","trece"]
	end

	def vectorpostot(vector)
		
		lista = ["","","","","","","","","","","","",""]
		i = 0 
		listadopost.each	do |post|
			
			vector.each do |elemento|
				if (elemento == post) 
					lista[i] = post 
				else
					 
				end
			
			end
			i = i+1
		end
		return lista
	end

end
