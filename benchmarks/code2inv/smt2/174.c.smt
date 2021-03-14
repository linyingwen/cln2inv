(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const l Int )
( declare-const l! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const l_0 Int )

( define-fun inv-f( ( i Int )( l Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( l Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int ) ) Bool
	( and
		( = i i_1 )
		( = l l_0 )
		( >= l_0 0 )
		( <= l_0 10 )
		( = i_1 0 )
	)
)

( define-fun trans-f ( ( i Int )( l Int )( i! Int )( l! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = i_2 i! )
			( = l l_0 )
			( = l! l_0 )
		)
		( and
			( = i_2 i )
			( < i_2 ( * 1000000 l_0 ) )
			( = i_3 ( + i_2 l_0 ) )
			( = i_3 i! )
			(= l l_0 )
			(= l! l_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( l Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( l_0 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = l l_0)
			)
		)
		( not
			( and
				( not ( < i_2 ( * 1000000 l_0 ) ) )
				( not ( = i_2 ( * 1000000 l_0 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i l i_0 i_1 i_2 i_3 l_0  )
		( inv-f i l )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i l )
			( trans-f i l i! l! i_0 i_1 i_2 i_3 l_0 )
		)
		( inv-f i! l! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i l  )
		( post-f i l i_0 i_1 i_2 i_3 l_0 )
	)
))

