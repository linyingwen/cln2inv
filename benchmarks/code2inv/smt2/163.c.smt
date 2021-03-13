(set-logic LIA)

( declare-const a Int )
( declare-const a! Int )
( declare-const b Int )
( declare-const b! Int )
( declare-const i Int )
( declare-const i! Int )
( declare-const n Int )
( declare-const n! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const a_0 Int )
( declare-const a_1 Int )
( declare-const a_2 Int )
( declare-const a_3 Int )
( declare-const a_4 Int )
( declare-const a_5 Int )
( declare-const b_0 Int )
( declare-const b_1 Int )
( declare-const b_2 Int )
( declare-const b_3 Int )
( declare-const b_4 Int )
( declare-const b_5 Int )
( declare-const i_0 Int )
( declare-const i_1 Int )
( declare-const i_2 Int )
( declare-const i_3 Int )
( declare-const n_0 Int )
( declare-const n_1 Int )

( define-fun inv-f( ( a Int )( b Int )( i Int )( n Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( a Int )( b Int )( i Int )( n Int )( tmp Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( a_4 Int )( a_5 Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int )( n_1 Int ) ) Bool
	( and
		( = a a_1 )
		( = b b_1 )
		( = i i_1 )
		( = n n_1 )
		( = i_1 0 )
		( = a_1 0 )
		( = b_1 0 )
		( = n_1 tmp )
		( >= n_1 0 )
		( <= n_1 1000000 )
	)
)

( define-fun trans-f ( ( a Int )( b Int )( i Int )( n Int )( tmp Int )( a! Int )( b! Int )( i! Int )( n! Int )( tmp! Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( a_4 Int )( a_5 Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int )( n_1 Int ) ) Bool
	( or
		( and
			( = a_2 a )
			( = b_2 b )
			( = i_2 i )
			( = a_2 a! )
			( = b_2 b! )
			( = i_2 i! )
			( = n n_1 )
			( = n! n_1 )
			( = a a! )
			( = b b! )
			(= tmp tmp! )
		)
		( and
			( = a_2 a )
			( = b_2 b )
			( = i_2 i )
			( < i_2 n_1 )
			( = a_3 ( + a_2 1 ) )
			( = b_3 ( + b_2 2 ) )
			( = a_4 a_3 )
			( = b_4 b_3 )
			( = i_3 ( + i_2 1 ) )
			( = a_4 a! )
			( = b_4 b! )
			( = i_3 i! )
			(= n n_1 )
			(= n! n_1 )
			(= tmp tmp! )
		)
		( and
			( = a_2 a )
			( = b_2 b )
			( = i_2 i )
			( < i_2 n_1 )
			( = a_5 ( + a_2 2 ) )
			( = b_5 ( + b_2 1 ) )
			( = a_4 a_5 )
			( = b_4 b_5 )
			( = i_3 ( + i_2 1 ) )
			( = a_4 a! )
			( = b_4 b! )
			( = i_3 i! )
			(= n n_1 )
			(= n! n_1 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( a Int )( b Int )( i Int )( n Int )( tmp Int )( a_0 Int )( a_1 Int )( a_2 Int )( a_3 Int )( a_4 Int )( a_5 Int )( b_0 Int )( b_1 Int )( b_2 Int )( b_3 Int )( b_4 Int )( b_5 Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( n_0 Int )( n_1 Int ) ) Bool
	( or
		( not
			( and
				( = a a_2)
				( = b b_2)
				( = i i_2)
				( = n n_1)
			)
		)
		( not
			( and
				( not ( < i_2 n_1 ) )
				( not ( = ( + a_2 b_2 ) ( * 3 n_1 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f a b i n tmp a_0 a_1 a_2 a_3 a_4 a_5 b_0 b_1 b_2 b_3 b_4 b_5 i_0 i_1 i_2 i_3 n_0 n_1  )
		( inv-f a b i n tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f a b i n tmp )
			( trans-f a b i n tmp a! b! i! n! tmp! a_0 a_1 a_2 a_3 a_4 a_5 b_0 b_1 b_2 b_3 b_4 b_5 i_0 i_1 i_2 i_3 n_0 n_1 )
		)
		( inv-f a! b! i! n! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f a b i n tmp  )
		( post-f a b i n tmp a_0 a_1 a_2 a_3 a_4 a_5 b_0 b_1 b_2 b_3 b_4 b_5 i_0 i_1 i_2 i_3 n_0 n_1 )
	)
))

