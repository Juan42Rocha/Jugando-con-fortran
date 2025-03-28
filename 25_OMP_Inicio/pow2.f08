program pow2
  use  omp_lib
  implicit none

  integer, parameter ::  N =  100
  integer           ::  i
  integer           :: x
  x=0

  !$omp  parallel do  shared(x) private(i)
  do i=1,N
    x = x +i*i
    print*, x
  end do
  !$omp end parallel do

   print*,x


end program 
