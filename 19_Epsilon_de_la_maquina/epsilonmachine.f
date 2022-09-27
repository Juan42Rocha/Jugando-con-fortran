*epsilonmachine.f

C programa para dalcular el epsilon de la maquina " "
C es decir, es el tamaño del intervalo entre el 1 y el
C siguiente número mayor que 1 distinguible de 1.
C cualquier numero 1+A  se redondea a 1 si 0<A z E/2
C o se redondea a 1+E si E/2<=A

      program epsilonmachine
      real Esimple
      double precision Edoble
      integer k
      k=1
      Esimple=1.0_4
      
 15   if (1.0_4+0.5_4*Esimple .gt. 1.0_4) then
        Esimple=Esimple*0.5_4
        k=k+1
        print *,k, Esimple
        goto 15
      end if
      
      print *, "*******************************************************"
      
      k=1
*1.0D0 significa una inidad e doble precisión
      Edoble=1.0D0

 25   if (1.0D0+0.5D0*Edoble .gt. 1.0D0) then
        Edoble=Edoble*0.5D0
        k=k+1
        print *,k, Edoble
        goto 25
      end if
      stop
      end

