(set-logic LIA)

( declare-const n Int )
( declare-const n! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const n_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )

( define-fun inv-f( ( n Int )( x Int )( y Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( n Int )( x Int )( y Int )( tmp Int )( n_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int )( y_1 Int )( y_2 Int ) ) Bool
	( and
		( = n n_0 )
		( = x x_0 )
		( = y y_0 )
		( = n_0 tmp )
		( = x_0 n_0 )
		( = y_0 0 )
	)
)

( define-fun trans-f ( ( n Int )( x Int )( y Int )( tmp Int )( n! Int )( x! Int )( y! Int )( tmp! Int )( n_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int )( y_1 Int )( y_2 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = y_1 y )
			( = x_1 x! )
			( = y_1 y! )
			( = n n! )
			( = y y! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( = y_1 y )
			( > x_1 0 )
			( = x_2 ( - x_1 1 ) )
			( = y_2 ( + y_1 1 ) )
			( = x_2 x! )
			( = y_2 y! )
			(= n n_0 )
			(= n! n_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( n Int )( x Int )( y Int )( tmp Int )( n_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int )( y_1 Int )( y_2 Int ) ) Bool
	( or
		( not
			( and
				( = n n_0)
				( = x x_1)
				( = y y_1)
			)
		)
		( not
			( and
				( not ( > x_1 0 ) )
				( not ( not ( = y_1 n_0 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f n x y tmp n_0 x_0 x_1 x_2 y_0 y_1 y_2  )
		( inv-f n x y tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f n x y tmp )
			( trans-f n x y tmp n! x! y! tmp! n_0 x_0 x_1 x_2 y_0 y_1 y_2 )
		)
		( inv-f n! x! y! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f n x y tmp  )
		( post-f n x y tmp n_0 x_0 x_1 x_2 y_0 y_1 y_2 )
	)
))
