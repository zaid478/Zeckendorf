function f = fibonacci_direct ( n )


  sqrt5 = sqrt ( 5.0 );
  phim = ( 1.0 - sqrt5 ) / 2.0;
  phip = ( 1.0 + sqrt5 ) / 2.0;

  if ( n < 0 )
    f = 0;
  else
    f = round ( ( phip^n - phim^n ) / sqrt ( 5.0 ) );
  end
 
  return
end
