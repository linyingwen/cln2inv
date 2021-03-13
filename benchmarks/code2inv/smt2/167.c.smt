(set-logic LIA)

( declare-const cond0 Int )
( declare-const cond0! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )

( declare-const cond0_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const x_3 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const y_3 Int )
( declare-const y_4 Int )
( declare-const y_5 Int )
( declare-const y_6 Int )

( define-fun inv-f( ( cond0 Int )( x Int )( y Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( cond0 Int )( x Int )( y Int )( cond0_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int )( y_6 Int ) ) Bool
	( and
		( = cond0 cond0_0 )
		( = x x_1 )
		( = y y_1 )
		( = cond0_0 1 )
		( = x_1 0 )
		( = y_1 0 )
	)
)

( define-fun trans-f ( ( cond0 Int )( x Int )( y Int )( cond0! Int )( x! Int )( y! Int )( cond0_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int )( y_6 Int ) ) Bool
	( or
		( and
			( = x_2 x )
			( = y_2 y )
			( = x_2 x! )
			( = y_2 y! )
			( = cond0 cond0_0 )
			( = cond0! cond0_0 )
			( = x x! )
			( = y y! )
		)
		( and
			( = y_2 y )
			cond0_0
			( < x_2 50 )
			( = y_3 ( + y_2 1 ) )
			( = y_4 y_3 )
			( < y_4 0 )
			( = y_4 y! )
			(= cond0 cond0_0 )
			(= cond0! cond0_0 )
			(= x x_1 )
			(= x! x_1 )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			cond0_0
			( < x_2 50 )
			( = y_3 ( + y_2 1 ) )
			( = y_4 y_3 )
			( not ( < y_4 0 ) )
			( = x_3 ( + x_2 1 ) )
			( = x_3 x! )
			( = y_4 y! )
			(= cond0 cond0_0 )
			(= cond0! cond0_0 )
		)
		( and
			( = y_2 y )
			cond0_0
			( not ( < x_2 50 ) )
			( = y_5 ( - y_2 1 ) )
			( = y_4 y_5 )
			( < y_4 0 )
			( = y_4 y! )
			(= cond0 cond0_0 )
			(= cond0! cond0_0 )
			(= x x_1 )
			(= x! x_1 )
		)
		( and
			( = x_2 x )
			( = y_2 y )
			cond0_0
			( not ( < x_2 50 ) )
			( = y_5 ( - y_2 1 ) )
			( = y_4 y_5 )
			( not ( < y_4 0 ) )
			( = x_3 ( + x_2 1 ) )
			( = x_3 x! )
			( = y_4 y! )
			(= cond0 cond0_0 )
			(= cond0! cond0_0 )
		)
	)
)

( define-fun post-f ( ( cond0 Int )( x Int )( y Int )( cond0_0 Int )( x_0 Int )( x_1 Int )( x_2 Int )( x_3 Int )( y_0 Int )( y_1 Int )( y_2 Int )( y_3 Int )( y_4 Int )( y_5 Int )( y_6 Int ) ) Bool
	( or
		( not
			( and
				( = cond0 cond0_0)
				( = x x_2)
				( = y y_2)
			)
		)
		( not
			( and
				( not cond0_0 )
				( = y_6 y_2 )
				( not ( = x_2 100 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f cond0 x y cond0_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5 y_6  )
		( inv-f cond0 x y )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f cond0 x y )
			( trans-f cond0 x y cond0! x! y! cond0_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5 y_6 )
		)
		( inv-f cond0! x! y! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f cond0 x y  )
		( post-f cond0 x y cond0_0 x_0 x_1 x_2 x_3 y_0 y_1 y_2 y_3 y_4 y_5 y_6 )
	)
))

