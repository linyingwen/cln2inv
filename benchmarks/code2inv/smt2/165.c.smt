(set-logic LIA)

( declare-const hi Int )
( declare-const hi! Int )
( declare-const lo Int )
( declare-const lo! Int )
( declare-const mid Int )
( declare-const mid! Int )
( declare-const tmp Int )
( declare-const tmp! Int )

( declare-const hi_0 Int )
( declare-const hi_1 Int )
( declare-const hi_2 Int )
( declare-const hi_3 Int )
( declare-const lo_0 Int )
( declare-const lo_1 Int )
( declare-const lo_2 Int )
( declare-const lo_3 Int )
( declare-const mid_0 Int )
( declare-const mid_1 Int )
( declare-const mid_2 Int )
( declare-const mid_3 Int )

( define-fun inv-f( ( hi Int )( lo Int )( mid Int )( tmp Int ) ) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

( define-fun pre-f ( ( hi Int )( lo Int )( mid Int )( tmp Int )( hi_0 Int )( hi_1 Int )( hi_2 Int )( hi_3 Int )( lo_0 Int )( lo_1 Int )( lo_2 Int )( lo_3 Int )( mid_0 Int )( mid_1 Int )( mid_2 Int )( mid_3 Int ) ) Bool
	( and
		( = hi hi_1 )
		( = lo lo_1 )
		( = mid mid_1 )
		( = lo_1 0 )
		( = mid_1 tmp )
		( > mid_1 0 )
		( <= mid_1 1000000 )
		( = hi_1 ( * 2 mid_1 ) )
	)
)

( define-fun trans-f ( ( hi Int )( lo Int )( mid Int )( tmp Int )( hi! Int )( lo! Int )( mid! Int )( tmp! Int )( hi_0 Int )( hi_1 Int )( hi_2 Int )( hi_3 Int )( lo_0 Int )( lo_1 Int )( lo_2 Int )( lo_3 Int )( mid_0 Int )( mid_1 Int )( mid_2 Int )( mid_3 Int ) ) Bool
	( or
		( and
			( = hi_2 hi )
			( = lo_2 lo )
			( = mid_2 mid )
			( = hi_2 hi! )
			( = lo_2 lo! )
			( = mid_2 mid! )
			( = hi hi! )
			( = lo lo! )
			(= tmp tmp! )
		)
		( and
			( = hi_2 hi )
			( = lo_2 lo )
			( = mid_2 mid )
			( > mid_2 0 )
			( = lo_3 ( + lo_2 1 ) )
			( = hi_3 ( - hi_2 1 ) )
			( = mid_3 ( - mid_2 1 ) )
			( = hi_3 hi! )
			( = lo_3 lo! )
			( = mid_3 mid! )
			(= tmp tmp! )
		)
	)
)

( define-fun post-f ( ( hi Int )( lo Int )( mid Int )( tmp Int )( hi_0 Int )( hi_1 Int )( hi_2 Int )( hi_3 Int )( lo_0 Int )( lo_1 Int )( lo_2 Int )( lo_3 Int )( mid_0 Int )( mid_1 Int )( mid_2 Int )( mid_3 Int ) ) Bool
	( or
		( not
			( and
				( = hi hi_2)
				( = lo lo_2)
				( = mid mid_2)
			)
		)
		( not
			( and
				( not ( > mid_2 0 ) )
				( not ( = lo_2 hi_2 ) )
			)
		)
	)
)
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( pre-f hi lo mid tmp hi_0 hi_1 hi_2 hi_3 lo_0 lo_1 lo_2 lo_3 mid_0 mid_1 mid_2 mid_3  )
		( inv-f hi lo mid tmp )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( and
			( inv-f hi lo mid tmp )
			( trans-f hi lo mid tmp hi! lo! mid! tmp! hi_0 hi_1 hi_2 hi_3 lo_0 lo_1 lo_2 lo_3 mid_0 mid_1 mid_2 mid_3 )
		)
		( inv-f hi! lo! mid! tmp! )
	)
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
( assert ( not
	( =>
		( inv-f hi lo mid tmp  )
		( post-f hi lo mid tmp hi_0 hi_1 hi_2 hi_3 lo_0 lo_1 lo_2 lo_3 mid_0 mid_1 mid_2 mid_3 )
	)
))
