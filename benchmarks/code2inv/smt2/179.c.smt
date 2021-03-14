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
( declare-const j_0 Int )
( declare-const j_1 Int )
( declare-const j_2 Int )
( declare-const n_0 Int )
( declare-const sn_0 Int )
( declare-const sn_1 Int )
( declare-const sn_2 Int )
( declare-const sn_3 Int )

( define-fun inv-f( ( i Int )( j Int )( n Int )( sn Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( j Int )( n Int )( sn Int )( i_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( n_0 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int ) ) Bool
	( and
		( = i i_0 )
		( = j j_0 )
		( = sn sn_0 )
		( = i_0 1 )
		( = j_0 10 )
		( = sn_0 0 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( n Int )( sn Int )( i! Int )( j! Int )( n! Int )( sn! Int )( i_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( n_0 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int ) ) Bool
	( or
		( and
			( = j_1 j )
			( = sn_1 sn )
			( = j_1 j! )
			( = sn_1 sn! )
			( = i i_0 )
			( = i! i_0 )
			( = n n_0 )
			( = n! n_0 )
			( = j j! )
			( = sn sn! )
		)
		( and
			( = j_1 j )
			( = sn_1 sn )
			( <= i_0 n_0 )
			( < i_0 j_1 )
			( = sn_2 ( + sn_1 2 ) )
			( = sn_3 sn_2 )
			( = j_2 ( - j_1 1 ) )
			( = j_2 j! )
			( = sn_3 sn! )
			(= i i_0 )
			(= i! i_0 )
			(= n n_0 )
			(= n! n_0 )
		)
		( and
			( = j_1 j )
			( = sn_1 sn )
			( <= i_0 n_0 )
			( not ( < i_0 j_1 ) )
			( = sn_3 sn_1 )
			( = j_2 ( - j_1 1 ) )
			( = j_2 j! )
			( = sn_3 sn! )
			(= i i_0 )
			(= i! i_0 )
			(= n n_0 )
			(= n! n_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( n Int )( sn Int )( i_0 Int )( j_0 Int )( j_1 Int )( j_2 Int )( n_0 Int )( sn_0 Int )( sn_1 Int )( sn_2 Int )( sn_3 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = i i_0)
					( = j j_1)
					( = n n_0 )
					( = sn sn_1)
				)
			)
			( not
				( and
					( not ( <= i_0 n_0 ) )
					( = sn_1 ( * n_0 2 ) )
					( not ( or ( = sn_1 ( * n_0 2 ) ) ( = sn_1 0 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = i i_0)
					( = j j_1)
					( = n n_0 )
					( = sn sn_1)
				)
			)
			( not
				( and
					( not ( <= i_0 n_0 ) )
					( not ( = sn_1 ( * n_0 2 ) ) )
					( not ( or ( = sn_1 ( * n_0 2 ) ) ( = sn_1 0 ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i j n sn i_0 j_0 j_1 j_2 n_0 sn_0 sn_1 sn_2 sn_3  )
		( inv-f i j n sn )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i j n sn )
			( trans-f i j n sn i! j! n! sn! i_0 j_0 j_1 j_2 n_0 sn_0 sn_1 sn_2 sn_3 )
		)
		( inv-f i! j! n! sn! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i j n sn  )
		( post-f i j n sn i_0 j_0 j_1 j_2 n_0 sn_0 sn_1 sn_2 sn_3 )
	)
))

