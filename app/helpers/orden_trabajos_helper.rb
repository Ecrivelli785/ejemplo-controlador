module OrdenTrabajosHelper
  def cadenatovector(cadena)
    if cadena.empty?
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
