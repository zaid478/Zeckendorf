function [ m, i_list, f_list ] = zeckendorf ( n )


  m = 0;
  i_list = zeros ( m, 1 );
  f_list = zeros ( m, 1 );
%
%  Extract a sequence of Fibonacci numbers.
%
  while ( 0 < n ) 
    [ f, i ] = fibonacci_floor ( n );
    m = m + 1;
    i_list(m) = i;
    n = n - f;
  end
%
%  Replace any pair of consecutive indices ( I, I-1 ) by I+1.
%
  for i = m : -1 : 2

    if ( i_list(i-1) == i_list(i) + 1 )
      i_list(i-1) = i_list(i-1) + 1;
      i_list(i:m-1) = i_list(i+1:m);
      i_list(m) = 0;
      m = m - 1;
    end

  end
%
%  Fill in the actual values of the Fibonacci numbers.
%
  for i = 1 : m
    f_list(i) = fibonacci_direct ( i_list(i) );
  end

  return
end
