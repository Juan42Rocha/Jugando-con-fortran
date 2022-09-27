C F77

      program circulo
      Real r, area 
      real pi
      parameter (pi=3.14159_4)
      
C Este programa lee un númeroreal r
C y muestra el área del circulo con radio r

      write (*,*) "Escribe el radio R: "
      read (*,*) 
      area = pi*r**2
      write (*,*) "Area = ", area
    
      stop
      end 
