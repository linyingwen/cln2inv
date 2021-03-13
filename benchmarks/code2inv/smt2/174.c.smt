(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const l Int )
( declare-const l! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const l_0 Int )
( declare-const l_1 Int )

( define-fun inv-f( ( i Int )( l Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( l Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int )( l_1 Int ) ) Bool
	( and
		( = i i_1 )
		( = l l_1 )
		( = l_1 tmp )
		( >= l_1 0 )
		( <= l_1 10 )
		( = i_1 0 )
	)
)

( define-fun trans-f ( ( i Int )( l Int )( tmp Int )( i! Int )( l! Int )( tmp! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int )( l_1 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = i_2 i! )
			( = l l_1 )
			( = l! l_1 )
			(= tmp tmp! )
		)
		( and
			( = i_2 i )
			( < i_2 ( * 1000000 l_1 ) )
			( = i_3 ( + i_2 l_1 ) )
			( = i_3 i! )
			(= l l_1 )
			(= l! l_1 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( i Int )( l Int )( tmp Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int )( l_1 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = l l_1)
			)
		)
		( not
			( and
				( not ( < i_2 ( * 1000000 l_1 ) ) )
				( not ( = i_2 ( * 1000000 l_1 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i l tmp i_0 i_1 i_2 i_3 l_0 l_1  )
		( inv-f i l tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i l tmp )
			( trans-f i l tmp i! l! tmp! i_0 i_1 i_2 i_3 l_0 l_1 )
		)
		( inv-f i! l! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i l tmp  )
		( post-f i l tmp i_0 i_1 i_2 i_3 l_0 l_1 )
	)
))

