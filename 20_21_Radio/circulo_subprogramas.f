* *********************circulo_subprogramas*****************************
      program circulo_subprogramas
      implicit none
      double precision radio, area
      double precision calcular_area
C  Invocar subprogramas y funciones
      call leer_radio(radio)
      area=calcular_area(radio)
      call imprimir_area(area)
      stop
      end program
* ***************finalizar el programa principal************************

* ************inician las subrutinas y funciones **********************
      subroutine leer_radio(radio)
        implicit none
        double precision radio
        print *, "Ingrese radio "
        read (*,*) radio
        return
      end
      
      double precision function calcular_area(radio)
        implicit none 
        double precision radio 
        double precision pi
        parameter (pi=acos(-1.0D0))
        calcular_area= pi*radio**2.0D0
        return
      end
      
      subroutine imprimir_area(a)
        implicit none
        double precision a
        print *, "El  área es: ", a
        return
      end
