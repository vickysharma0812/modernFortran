PROGRAM main
USE, INTRINSIC :: ISO_FORTRAN_ENV, ONLY : DFP=>real64, I4B=>int32
USE AutoDiff_Module
IMPLICIT NONE


PROCEDURE( func ), POINTER :: f => NULL()
f => func

WRITE( *, * ) Derivative( f=f, x=1.0_DFP )


CONTAINS
  PURE FUNCTION func( x ) RESULT( Ans )
    REAL( DFP ), INTENT( IN ) :: x
    REAL( DFP ) :: Ans
    Ans = x**2
  END FUNCTION func
END PROGRAM main