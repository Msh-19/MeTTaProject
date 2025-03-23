;finding if an element is a memeber of a list of numbers
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (is-memeber (Cons $x $xs) $memeber) 
    (if (== $x $memeber)
        (True)
        (if (== $xs Nil)
            (False)
            (is-memeber $xs $memeber)
        )
    )
)

!(is-memeber (Cons 1 (Cons 2 (Cons 3 Nil))) 5) ;False
!(is-memeber (Cons 1 (Cons 2 (Cons 3 Nil))) 2) ;True