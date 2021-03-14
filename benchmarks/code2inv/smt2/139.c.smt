(set-logic LIA)

( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )

( declare-const x_0 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )

( define-fun inv-f( ( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( x Int )( y Int )( x_0 Int )( y_0 Int )( y_1 Int ) ) Bool
	( and
		( = x x_0 )
		( = y y_1 )
		( = y_1 ( + x_0 1 ) )
	)
)

( define-fun trans-f ( ( x Int )( y Int )( x! Int )( y! Int )( x_0 Int )( y_0 Int )( y_1 Int ) ) Bool
	( or
		( and
			( = x x_0 )
			( = x! x_0 )
			( = y y! )
		)
		( and
			( < x_0 1024 )
			(= x x_0 )
			(= x! x_0 )
			(= y y_1 )
			(= y! y_1 )
		)
	)
)

( define-fun post-f ( ( x Int )( y Int )( x_0 Int )( y_0 Int )( y_1 Int ) ) Bool
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f x y x_0 y_0 y_1  )
		( inv-f x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f x y )
			( trans-f x y x! y! x_0 y_0 y_1 )
		)
		( inv-f x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f x y  )
		( post-f x y x_0 y_0 y_1 )
	)
))

