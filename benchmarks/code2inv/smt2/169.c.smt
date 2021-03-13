(set-logic LIA)

( declare-const a Int )
( declare-const a! Int )
( declare-const b Int )
( declare-const b! Int )
( declare-const cnt Int )
( declare-const cnt! Int )
( declare-const res Int )
( declare-const res! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const a_0 Int )
( declare-const b_0 Int )
( declare-const cnt_0 Int )
( declare-const cnt_1 Int )
( declare-const cnt_2 Int )
( declare-const cnt_3 Int )
( declare-const res_0 Int )
( declare-const res_1 Int )
( declare-const res_2 Int )
( declare-const res_3 Int )

( define-fun inv-f( ( a Int )( b Int )( cnt Int )( res Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( a Int )( b Int )( cnt Int )( res Int )( tmp Int )( a_0 Int )( b_0 Int )( cnt_0 Int )( cnt_1 Int )( cnt_2 Int )( cnt_3 Int )( res_0 Int )( res_1 Int )( res_2 Int )( res_3 Int ) ) Bool
	( and
		( = a a_0 )
		( = b b_0 )
		( = cnt cnt_1 )
		( = res res_1 )
		( = a_0 tmp )
		( = b_0 tmp )
		( <= a_0 1000000 )
		( <= 0 b_0 )
		( <= b_0 1000000 )
		( = res_1 a_0 )
		( = cnt_1 b_0 )
	)
)

( define-fun trans-f ( ( a Int )( b Int )( cnt Int )( res Int )( tmp Int )( a! Int )( b! Int )( cnt! Int )( res! Int )( tmp! Int )( a_0 Int )( b_0 Int )( cnt_0 Int )( cnt_1 Int )( cnt_2 Int )( cnt_3 Int )( res_0 Int )( res_1 Int )( res_2 Int )( res_3 Int ) ) Bool
	( or
		( and
			( = cnt_2 cnt )
			( = res_2 res )
			( = cnt_2 cnt! )
			( = res_2 res! )
			( = a a! )
			( = b b! )
			( = res res! )
			(= tmp tmp! )
		)
		( and
			( = cnt_2 cnt )
			( = res_2 res )
			( > cnt_2 0 )
			( = cnt_3 ( - cnt_2 1 ) )
			( = res_3 ( + res_2 1 ) )
			( = cnt_3 cnt! )
			( = res_3 res! )
			(= a a_0 )
			(= a! a_0 )
			(= b b_0 )
			(= b! b_0 )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( a Int )( b Int )( cnt Int )( res Int )( tmp Int )( a_0 Int )( b_0 Int )( cnt_0 Int )( cnt_1 Int )( cnt_2 Int )( cnt_3 Int )( res_0 Int )( res_1 Int )( res_2 Int )( res_3 Int ) ) Bool
	( or
		( not
			( and
				( = a a_0)
				( = b b_0)
				( = cnt cnt_2)
				( = res res_2)
			)
		)
		( not
			( and
				( not ( > cnt_2 0 ) )
				( not ( = res_2 ( + a_0 b_0 ) ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f a b cnt res tmp a_0 b_0 cnt_0 cnt_1 cnt_2 cnt_3 res_0 res_1 res_2 res_3  )
		( inv-f a b cnt res tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f a b cnt res tmp )
			( trans-f a b cnt res tmp a! b! cnt! res! tmp! a_0 b_0 cnt_0 cnt_1 cnt_2 cnt_3 res_0 res_1 res_2 res_3 )
		)
		( inv-f a! b! cnt! res! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f a b cnt res tmp  )
		( post-f a b cnt res tmp a_0 b_0 cnt_0 cnt_1 cnt_2 cnt_3 res_0 res_1 res_2 res_3 )
	)
))

