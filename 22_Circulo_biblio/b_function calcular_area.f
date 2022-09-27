      double precision function calcular_area(radio)
        implicit none 
        real radio 
        real pi
        parameter (pi=acos(-1.0D0))
        calcular_area= pi*radio**2.0D0
        return
      end
