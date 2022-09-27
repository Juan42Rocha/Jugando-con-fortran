C Lotka_volterra.f

      program lotka_volterra
      implicit none
      double precision a1, a2, b1, b2
      double precision x0, y0, x1, y1,dt,t1,t0,t
      integer i,nstep
      data a1, a2, b1, b2/0.4,0.018,0.8,0.023/
      data x0, y0 / 30,4/
      t0 = 0.0D0
      t1 = 50.0D0
      nstep = 1000
      dt = (t1-t0)/dfloat(nstep)
      print *, 0.,x0,y0
      do i=1,nstep
        t = dt * dfloat(i)
        x1 = x0 + dt * (a1 * x0 - a2 * x0 * y0)
        y1 = y0 + dt * (-b1 *y0 + b2 * x0 * y0)
        print *, t, x1, y1
        x0=x1
        y0=y1
      end do
      stop
      end
