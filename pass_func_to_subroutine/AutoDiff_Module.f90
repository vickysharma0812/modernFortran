MODULE AutoDiff_Module
USE, INTRINSIC :: ISO_FORTRAN_ENV, ONLY : DFP=>real64, I4B=>int32
IMPLICIT NONE

REAL( DFP ), PARAMETER :: eps=1.0E-8

PRIVATE

!----------------------------------------------------------------------------
!                                                                 Interfaces
!----------------------------------------------------------------------------

ABSTRACT INTERFACE

!> authors: Dr. Vikas Sharma
!
! This is a template for a scalar valued scalar function
! f:R-->R
  PURE FUNCTION userFunc_R_to_R( x ) RESULT( Ans )
    IMPORT :: DFP, I4B
    REAL( DFP ), INTENT( IN ) ::  x
    REAL( DFP ) :: Ans
  END FUNCTION userFunc_R_to_R
END INTERFACE

ABSTRACT INTERFACE

!> authors: Dr. Vikas Sharma
!
! This is a template for a scalar valued scalar function
! f:R2-->R
  PURE FUNCTION userFunc_R2_to_R( x, y ) RESULT( Ans )
    IMPORT :: DFP, I4B
    REAL( DFP ), INTENT( IN ) ::  x, y
    REAL( DFP ) :: Ans
  END FUNCTION userFunc_R2_to_R
END INTERFACE


!----------------------------------------------------------------------------
!                                                                 Derivative
!----------------------------------------------------------------------------

INTERFACE

!> authors: Dr. Vikas Sharma
!
!  $$\frac{df}{dx}$$
MODULE PURE FUNCTION derivative_R_to_R( f, x ) RESULT( Ans )
  REAL( DFP ), INTENT( IN ) :: x
  REAL( DFP ) :: Ans
  PROCEDURE( userFunc_R_to_R ), POINTER, INTENT( IN ) :: f
END FUNCTION derivative_R_to_R
END INTERFACE

!----------------------------------------------------------------------------
!
!----------------------------------------------------------------------------

INTERFACE

!> authors: Dr. Vikas Sharma
!
!  $$\frac{\partial f(x,y)}{\partial x}, \frac{\partial f(x,y)}{\partial y}$$
MODULE PURE FUNCTION derivative_R2_to_R( f, x, y ) RESULT( Ans )
  REAL( DFP ), INTENT( IN ) :: x, y
  REAL( DFP ) :: Ans(2)
  PROCEDURE( userFunc_R2_to_R ), POINTER, INTENT( IN ) :: f
END FUNCTION derivative_R2_to_R
END INTERFACE

INTERFACE derivative
  MODULE PROCEDURE derivative_R_to_R, derivative_R2_to_R
END INTERFACE derivative

PUBLIC :: derivative

END MODULE AutoDiff_Module