(set-logic LIA)

( declare-const i Int )
( declare-const i! Int )
( declare-const n Int )
( declare-const n! Int )
( declare-const sn Int )
( declare-const sn! Int )

( declare-const i_0 Int )
( declare-const n_0 Int )
( declare-const sn_0 Int )

( define-fun inv-f( ( i Int )( n Int )( sn Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( i Int )( n Int )( sn Int )( i_0 Int )( n_0 Int )( sn_0 Int ) ) Bool
	( and
		( = i i_0 )
		( = n n_0 )
		( = sn sn_0 )
		( = i_0 1 )
		( = sn_0 0 )
		( < n_0 1000 )
		( >= n_0 -1000 )
	)
)

( define-fun trans-f ( ( i Int )( n Int )( sn Int )( i! Int )( n! Int )( sn! Int )( i_0 Int )( n_0 Int )( sn_0 Int ) ) Bool
	( or
		( and
			( = i i_0 )
			( = i! i_0 )
			( = n n_0 )
			( = n! n_0 )
			( = sn sn! )
		)
		( and
			( <= i_0 n_0 )
			(= i i_0 )
			(= i! i_0 )
			(= n n_0 )
			(= n! n_0 )
			(= sn sn_0 )
			(= sn! sn_0 )
		)
	)
)

( define-fun post-f ( ( i Int )( n Int )( sn Int )( i_0 Int )( n_0 Int )( sn_0 Int ) ) Bool
	( and
		( or
			( not
				( and
					( = i i_0)
					( = n n_0)
					( = sn sn_0)
				)
			)
			( not
				( and
					( not ( <= i_0 n_0 ) )
					( = sn_0 ( * n_0 2 ) )
					( not ( or ( = sn_0 ( * n_0 2 ) ) ( = sn_0 0 ) ) )
				)
			)
		)
		( or
			( not
				( and
					( = i i_0)
					( = n n_0)
					( = sn sn_0)
				)
			)
			( not
				( and
					( not ( <= i_0 n_0 ) )
					( not ( = sn_0 ( * n_0 2 ) ) )
					( not ( or ( = sn_0 ( * n_0 2 ) ) ( = sn_0 0 ) ) )
				)
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f i n sn i_0 n_0 sn_0  )
		( inv-f i n sn )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f i n sn )
			( trans-f i n sn i! n! sn! i_0 n_0 sn_0 )
		)
		( inv-f i! n! sn! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f i n sn  )
		( post-f i n sn i_0 n_0 sn_0 )
	)
))

