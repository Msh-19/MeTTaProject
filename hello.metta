; first task function
(Bob isParentOf Ann)
(Bob isParentOf Joe)
(Ann isParentOf Mary)
(Ann isParentOf John)


(= (findChildren $y)
   (match &self ($y isParentOf $x) $x))
; function calls
! (findChildren Bob)

(= (findGrandchild $y)
    (findChildren(findChildren $y)))

! (findGrandchild Bob)


; Second Task
(= (isMember $x )())