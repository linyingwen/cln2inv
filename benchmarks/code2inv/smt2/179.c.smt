(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const j Int )
( declare-const j! Int )
( declare-const n Int )
( declare-const n! Int )
( declare-const sn Int )
( declare-const sn! Int )

( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const j_3 Int )
( declare-const n_0 Int )
( declare-const sn_0 Int )
( declare-const sn_1 Int )
( declare-const sn_2 Int )
( declare-const sn_3 Int )
( declare-const sn_4 Int )

( define-fun inv-f( ( i Int )( j Int )( n Int )( sn Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( n Int )( sn Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( n_0 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int )( sn_4 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = n n_0 )
		( = sn sn_1 )
		( = i_1 1 )
		( = j_1 10 )
		( = sn_1 0 )
		( >= n_0 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( n Int )( sn Int )( i! Int )( j! Int )( n! Int )( sn! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( n_0 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int )( sn_4 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = j_2 j )
			( = sn_2 sn )
			( = i_2 i! )
			( = j_2 j! )
			( = sn_2 sn! )
			( = n n_0 )
			( = n! n_0 )
			( = j j! )
			( = sn sn! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( = sn_2 sn )
			( <= i_2 n_0 )
			( < i_2 j_2 )
			( = sn_3 ( + sn_2 2 ) )
			( = sn_4 sn_3 )
			( = j_3 ( - j_2 1 ) )
			( = i_3 ( + i_2 1 ) )
			( = i_3 i! )
			( = j_3 j! )
			( = sn_4 sn! )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( = sn_2 sn )
			( <= i_2 n_0 )
			( not ( < i_2 j_2 ) )
			( = sn_4 sn_2 )
			( = j_3 ( - j_2 1 ) )
			( = i_3 ( + i_2 1 ) )
			( = i_3 i! )
			( = j_3 j! )
			( = sn_4 sn! )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( n Int )( sn Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int )( n_0 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int )( sn_4 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = i i_2)
					( = j j_2)
					( = n n_0)
					( = sn sn_2)
				)
			)
			( not
				( and
					( not ( <= i_2 n_0 ) )
					( = sn_2 ( * n_0 2 ) )
					( not ( or ( = sn_2 ( * n_0 2 ) ) ( = sn_2 0 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = i i_2)
					( = j j_2)
					( = n n_0)
					( = sn sn_2)
				)
			)
			( not
				( and
					( not ( <= i_2 n_0 ) )
					( not ( = sn_2 ( * n_0 2 ) ) )
					( not ( or ( = sn_2 ( * n_0 2 ) ) ( = sn_2 0 ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j n sn i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 n_0 sn_0 sn_1 sn_2 sn_3 sn_4  )
		( inv-f i j n sn )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j n sn )
			( trans-f i j n sn i! j! n! sn! i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 n_0 sn_0 sn_1 sn_2 sn_3 sn_4 )
		)
		( inv-f i! j! n! sn! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j n sn  )
		( post-f i j n sn i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3 n_0 sn_0 sn_1 sn_2 sn_3 sn_4 )
	)
))

