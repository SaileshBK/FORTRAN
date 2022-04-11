program fibonacci
  implicit none
   print*, fib(9)
   stop

contains
   function fib(n)
    integer, intent(in) :: n
    integer, parameter :: fib0 = 0, fib1 = 1
    integer :: first, second,fib, x
    
 
    if( n == 0 ) then
    
       fib = fib0
       
    else if( n == 1 ) then
       
       fib = fib1
      
    else
      fib = fib1
      first = fib0
   
      do x = 2, n
       second = first
       first = fib
       fib = first + second
    end do
 end if
end function fib

end program fibonacci
