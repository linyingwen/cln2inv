(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const x Int )
( declare-const x! Int )
( declare-const y Int )
( declare-const y! Int )
( declare-const z Int )
( declare-const z! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const x_0 Int )
( declare-const x_1 Int )
( declare-const x_2 Int )
( declare-const y_0 Int )
( declare-const y_1 Int )
( declare-const y_2 Int )
( declare-const z_0 Int )
( declare-const z_1 Int )
( declare-const z_2 Int )

( define-fun inv-f( ( i Int )( j Int )( x Int )( y Int )( z Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( x Int )( y Int )( z Int )( tmp Int )( i_0 Int )( i_1 Int )( j_0 Int )( j_1 Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int )( y_1 Int )( y_2 Int )( z_0 Int )( z_1 Int )( z_2 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = x x_0 )
		( = y y_0 )
		( = z z_0 )
		( = i_1 tmp )
		( = j_1 tmp )
		( >= i_1 0 )
		( <= i_1 1000000 )
		( >= j_1 0 )
		( = j_1 i_1 )
		( = x_0 i_1 )
		( = y_0 j_1 )
		( = z_0 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( x Int )( y Int )( z Int )( tmp Int )( i! Int )( j! Int )( x! Int )( y! Int )( z! Int )( tmp! Int )( i_0 Int )( i_1 Int )( j_0 Int )( j_1 Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int )( y_1 Int )( y_2 Int )( z_0 Int )( z_1 Int )( z_2 Int ) ) Bool
	( or
		( and
			( = x_1 x )
			( = y_1 y )
			( = z_1 z )
			( = x_1 x! )
			( = y_1 y! )
			( = z_1 z! )
			( = i i! )
			( = j j! )
			( = y y! )
			( = z z! )
			(= tmp tmp! )
		)
		( and
			( = x_1 x )
			( = y_1 y )
			( = z_1 z )
			( not ( = x_1 0 ) )
			( = x_2 ( - x_1 1 ) )
			( = y_2 ( - y_1 2 ) )
			( = z_2 ( + z_1 1 ) )
			( = x_2 x! )
			( = y_2 y! )
			( = z_2 z! )
			(= i i_1 )
			(= i! i_1 )
			(= j j_1 )
			(= j! j_1 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( x Int )( y Int )( z Int )( tmp Int )( i_0 Int )( i_1 Int )( j_0 Int )( j_1 Int )( x_0 Int )( x_1 Int )( x_2 Int )( y_0 Int )( y_1 Int )( y_2 Int )( z_0 Int )( z_1 Int )( z_2 Int ) ) Bool
	( or
		( not
			( and
				( = i i_1)
				( = j j_1)
				( = x x_1)
				( = y y_1)
				( = z z_1)
			)
		)
		( not
			( and
				( not ( not ( = x_1 0 ) ) )
				( not ( = y_1 ( -z_1 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j x y z tmp i_0 i_1 j_0 j_1 x_0 x_1 x_2 y_0 y_1 y_2 z_0 z_1 z_2  )
		( inv-f i j x y z tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j x y z tmp )
			( trans-f i j x y z tmp i! j! x! y! z! tmp! i_0 i_1 j_0 j_1 x_0 x_1 x_2 y_0 y_1 y_2 z_0 z_1 z_2 )
		)
		( inv-f i! j! x! y! z! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j x y z tmp  )
		( post-f i j x y z tmp i_0 i_1 j_0 j_1 x_0 x_1 x_2 y_0 y_1 y_2 z_0 z_1 z_2 )
	)
))

