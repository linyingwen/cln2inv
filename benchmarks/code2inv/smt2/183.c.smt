(set-logic LIA)

( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const y_0 Int )

( define-fun inv-f( ( x Int )( y Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( y Int )( tmp Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int ) ) Bool
	( and
		( = x x_0 )
		( = y y_0 )
		( = x_0 tmp )
		( = y_0 tmp )
		( > y_0 0 )
	)
)

( define-fun trans-f ( ( x Int )( y Int )( tmp Int )( x! Int )( y! Int )( tmp! Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = x_1 x! )
			( = y y! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( < x_1 100 )
			( = x_2 ( + x_1 y_0 ) )
			( = x_2 x! )
			(= y y_0 )
			(= y! y_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( x Int )( y Int )( tmp Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int ) ) Bool
	( or
		( not
			( and
				( = x x_1)
				( = y y_0)
			)
		)
		( not
			( and
				( not ( < x_1 100 ) )
				( not ( > y_0 0 ) )
				( not ( >= x_1 100 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x y tmp x_0 x_1 x_2 y_0  )
		( inv-f x y tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x y tmp )
			( trans-f x y tmp x! y! tmp! x_0 x_1 x_2 y_0 )
		)
		( inv-f x! y! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x y tmp  )
		( post-f x y tmp x_0 x_1 x_2 y_0 )
	)
))

