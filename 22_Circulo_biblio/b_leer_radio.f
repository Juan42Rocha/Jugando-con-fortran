        program b_leer_radio
        subroutine leer_radio(radio)
        implicit none
        real radio
        print *, "Ingrese radio "
        read (*,*) radio
        return
      end
