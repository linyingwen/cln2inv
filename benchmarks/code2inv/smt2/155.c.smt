(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const l Int )
( declare-const l! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const l_0 Int )
( declare-const l_1 Int )
( declare-const l_2 Int )

( define-fun inv-f( ( i Int )( j Int )( l Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( l Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( j_1 Int )( j_2 Int )( l_0 Int )( l_1 Int )( l_2 Int ) ) Bool
	( and
		( = i i_0 )
		( = j j_0 )
		( = l l_0 )
		( = i_0 0 )
		( = j_0 0 )
		( = l_0 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( l Int )( i! Int )( j! Int )( l! Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( j_1 Int )( j_2 Int )( l_0 Int )( l_1 Int )( l_2 Int ) ) Bool
	( or
		( and
			( = i_1 i )
			( = j_1 j )
			( = l_1 l )
			( = i_1 i! )
			( = j_1 j! )
			( = l_1 l! )
			( = i i! )
			( = j j! )
		)
		( and
			( = i_1 i )
			( = j_1 j )
			( = l_1 l )
			( < l_1 268435455 )
			( = i_2 ( + i_1 1 ) )
			( = j_2 ( + j_1 2 ) )
			( = l_2 ( + l_1 3 ) )
			( not ( = l_2 ( + i_2 j_2 ) ) )
			( = i_2 i! )
			( = j_2 j! )
			( = l_2 l! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( l Int )( i_0 Int )( i_1 Int )( i_2 Int )( j_0 Int )( j_1 Int )( j_2 Int )( l_0 Int )( l_1 Int )( l_2 Int ) ) Bool
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j l i_0 i_1 i_2 j_0 j_1 j_2 l_0 l_1 l_2  )
		( inv-f i j l )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j l )
			( trans-f i j l i! j! l! i_0 i_1 i_2 j_0 j_1 j_2 l_0 l_1 l_2 )
		)
		( inv-f i! j! l! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j l  )
		( post-f i j l i_0 i_1 i_2 j_0 j_1 j_2 l_0 l_1 l_2 )
	)
))

