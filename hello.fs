: main ( -- )
    next-arg

    dup 0 = if
        drop drop
        s" world"
    endif

    ." Hello " type ." !" cr

    bye ;

' main is 'cold

