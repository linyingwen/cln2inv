(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const sn Int )
( declare-const sn! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const sn_0 Int )
( declare-const sn_1 Int )
( declare-const sn_2 Int )
( declare-const sn_3 Int )

( define-fun inv-f( ( i Int )( sn Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( sn Int )( i_0 Int )( i_1 Int )( i_2 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int ) ) Bool
	( and
		( = i i_0 )
		( = sn sn_0 )
		( = i_0 1 )
		( = sn_0 0 )
	)
)

( define-fun trans-f ( ( i Int )( sn Int )( i! Int )( sn! Int )( i_0 Int )( i_1 Int )( i_2 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int ) ) Bool
	( or
		( and
			( = i_1 i )
			( = sn_1 sn )
			( = i_1 i! )
			( = sn_1 sn! )
			( = sn sn! )
		)
		( and
			( = i_1 i )
			( = sn_1 sn )
			( <= i_1 8 )
			( < i_1 4 )
			( = sn_2 ( + sn_1 2 ) )
			( = sn_3 sn_2 )
			( = i_2 ( + i_1 1 ) )
			( = i_2 i! )
			( = sn_3 sn! )
		)
		( and
			( = i_1 i )
			( = sn_1 sn )
			( <= i_1 8 )
			( not ( < i_1 4 ) )
			( = sn_3 sn_1 )
			( = i_2 ( + i_1 1 ) )
			( = i_2 i! )
			( = sn_3 sn! )
		)
	)
)

( define-fun post-f ( ( i Int )( sn Int )( i_0 Int )( i_1 Int )( i_2 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = i i_1)
					( = sn sn_1)
				)
			)
			( not
				( and
					( not ( <= i_1 8 ) )
					( = sn_1 ( * 8 2 ) )
					( not ( or ( = sn_1 ( * 8 2 ) ) ( = sn_1 0 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = i i_1)
					( = sn sn_1)
				)
			)
			( not
				( and
					( not ( <= i_1 8 ) )
					( not ( = sn_1 ( * 8 2 ) ) )
					( not ( or ( = sn_1 ( * 8 2 ) ) ( = sn_1 0 ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i sn i_0 i_1 i_2 sn_0 sn_1 sn_2 sn_3  )
		( inv-f i sn )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i sn )
			( trans-f i sn i! sn! i_0 i_1 i_2 sn_0 sn_1 sn_2 sn_3 )
		)
		( inv-f i! sn! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i sn  )
		( post-f i sn i_0 i_1 i_2 sn_0 sn_1 sn_2 sn_3 )
	)
))

