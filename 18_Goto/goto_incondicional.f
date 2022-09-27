***************************goto_incondicional.f*************************
C El uso de la sentencia GOTO es controversial, y no se caconseja su uso
C fuera de estructuras de control.
C
C El siguiente programa muestra el uso inadecuado de la sentencia GOTO,
C ya que en via el flujo de programa a otra parte del mismo
C incondicionalmente, esto produce un codígo inconsistente.
C incompleto o complicado de mantener.
C
C Fortran77 no incluye estructuras de control condicionales como
C DO/WHILE o  DO/UNTIL  básica en otros lenguajes de programación de 
C alto nivel más modernos.
************************************************************************
      program goto_incondicional
      integer k
      k=1
      print *, "Como estamos antes del GOTO esto saldrá en pantalla"
      goto 10
      print *, "Esto no saldrá en pantalla :(", k
      k=2
      print *, "Se efectuó una ruptura en el flujo debido a la "
      print *, "sentencia GOTO"
      stop 
      end
