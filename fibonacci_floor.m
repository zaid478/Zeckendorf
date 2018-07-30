function [ f, i ] = fibonacci_floor ( n )

  if ( n <= 0 )

    i = 0;
    f = 0;

  else

    i = floor ( log ( 0.5 * ( 2 * n + 1 ) * sqrt ( 5.0 ) ) ...
      / log ( 0.5 * ( 1.0 + sqrt ( 5.0 ) ) ) );

    f = fibonacci_direct ( i );

    if ( n < f )
      i = i - 1;
      f = fibonacci_direct ( i );
    end

  end

  return
end
