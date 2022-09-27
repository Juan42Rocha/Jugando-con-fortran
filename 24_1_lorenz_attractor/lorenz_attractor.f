c http://www.geom.uiuc.edu/~worfolk/apps/Lorenz/
c data a ,b, c/10.0, 28., 2.66666/
      data a ,b, c/10., 28.0, 2.66666/
      data x0,y0,z0/100,0.0005,0.00005/
      pi=acos(-1.)
      t1=0.
      t2=40.
      nstep=10000
      dt=(t2-t1)/float(nstep)
      print *, 0.,x0,y0,z0
      do i=1,nstep
        t=dt*float(i)
        x1= x0 +dt*a*(y0-x0)
        y1 = y0+ dt*(x0*(b-z0) - y0 )
        z1=z0 + dt*( x0*y0 - c*z0)
        print *,t, x1,y1,z1
        x0=x1
        y0=y1
        z0=z1
      end do
      stop
      end
