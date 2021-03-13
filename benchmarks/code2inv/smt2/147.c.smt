(set-logic LIA)

( declare-const N Int )
( declare-const N! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const N_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )

( define-fun inv-f( ( N Int )( x Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( N Int )( x Int )( tmp Int )( N_0 Int )( x_0 Int )( x_1 Int )( x_2 Int ) ) Bool
	( and
		( = N N_0 )
		( = x x_0 )
		( = x_0 0 )
		( = N_0 tmp )
	)
)

( define-fun trans-f ( ( N Int )( x Int )( tmp Int )( N! Int )( x! Int )( tmp! Int )( N_0 Int )( x_0 Int )( x_1 Int )( x_2 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = x_1 x! )
			( = N N_0 )
			( = N! N_0 )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( < x_1 N_0 )
			( = x_2 ( + x_1 2 ) )
			( = x_2 x! )
			(= N N_0 )
			(= N! N_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( N Int )( x Int )( tmp Int )( N_0 Int )( x_0 Int )( x_1 Int )( x_2 Int ) ) Bool
	( or
		( not
			( and
				( = N N_0)
				( = x x_1)
			)
		)
		( not
			( and
				( not ( < x_1 N_0 ) )
				( not ( = ( mod x_1 2 ) 1 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f N x tmp N_0 x_0 x_1 x_2  )
		( inv-f N x tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f N x tmp )
			( trans-f N x tmp N! x! tmp! N_0 x_0 x_1 x_2 )
		)
		( inv-f N! x! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f N x tmp  )
		( post-f N x tmp N_0 x_0 x_1 x_2 )
	)
))

