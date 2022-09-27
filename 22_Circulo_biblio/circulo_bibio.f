      program circulo_bibio
      implicit none
*debe de ser declaradas
      real radio.area
      real calcular_area
*invocar subprogramas y duncioens 
      call leer_radio(radio)
      area =calcular_area(radio)
      call imprimir_area(area)
      stop
      end program 
