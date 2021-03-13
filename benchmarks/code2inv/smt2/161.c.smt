(set-logic LIA)

( declare-const cond Int )
( declare-const cond! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const cond_0 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )

( define-fun inv-f( ( cond Int )( x Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( cond Int )( x Int )( tmp Int )( cond_0 Int )( x_0 Int )( x_1 Int )( x_2 Int ) ) Bool
	( and
		( = cond cond_0 )
		( = x x_0 )
		( = x_0 1 )
		( = cond_0 tmp )
	)
)

( define-fun trans-f ( ( cond Int )( x Int )( tmp Int )( cond! Int )( x! Int )( tmp! Int )( cond_0 Int )( x_0 Int )( x_1 Int )( x_2 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = x_1 x! )
			( = cond cond_0 )
			( = cond! cond_0 )
			( = x x! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( not ( = cond_0 0 ) )
			( = x_2 ( + x_1 2 ) )
			( = x_2 x! )
			(= cond cond_0 )
			(= cond! cond_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( cond Int )( x Int )( tmp Int )( cond_0 Int )( x_0 Int )( x_1 Int )( x_2 Int ) ) Bool
	( or
		( not
			( and
				( = cond cond_0)
				( = x x_1)
			)
		)
		( not
			( and
				( not ( not ( = cond_0 0 ) ) )
				( not ( = ( mod x_1 2 ) 1 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f cond x tmp cond_0 x_0 x_1 x_2  )
		( inv-f cond x tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f cond x tmp )
			( trans-f cond x tmp cond! x! tmp! cond_0 x_0 x_1 x_2 )
		)
		( inv-f cond! x! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f cond x tmp  )
		( post-f cond x tmp cond_0 x_0 x_1 x_2 )
	)
))

