program parallelRandwalk
  use omp_lib
  implicit none

  integer, parameter :: N = 11
  integer, parameter :: mts = 1
  integer            :: pos,rel
  real               :: paso
  
  integer            :: i,j
  integer, allocatable :: walk(:,:)
  rel = 100000000

  allocate(walk(N,mts*N+1))
  walk = 0
   
  !$omp parallel do shared(walk) private(pos,paso,j)
  do j=1,rel
    pos = 6
    !$omp atomic
    walk(pos,1) = walk(pos,1) + 1
    do i=1,mts*N
       call random_number(paso)
       if (paso < 0.5)then
         pos = pos -1
       else
         pos = pos +1
       end if

       if (pos == N+1) then
         pos = 1
       else if (pos == 0) then
         pos = N
       end if
       !$omp atomic
       walk(pos,i+1) = walk(pos,i+1) + 1
    end do
  end do
  !$omp end parallel do
  
  do i=1,mts*N
  print*, real(walk(:,i))/real(rel)
  end do

  print*, omp_get_max_threads()

end program 
