SUBMODULE( AutoDiff_Module ) Methods
IMPLICIT NONE

CONTAINS

!----------------------------------------------------------------------------
!                                                                 Derivative
!----------------------------------------------------------------------------

MODULE PROCEDURE derivative_R_to_R
  Ans = 0.5_DFP * (f( x+eps ) - f( x-eps ))/eps
END PROCEDURE derivative_R_to_R

!----------------------------------------------------------------------------
!                                                                 Derivative
!----------------------------------------------------------------------------

MODULE PROCEDURE derivative_R2_to_R
  Ans(1) = 0.5_DFP * (f( x+eps, y ) - f( x-eps, y ))/eps
  Ans(2) = 0.5_DFP * (f( x, y+eps ) - f( x, y-eps ))/eps
END PROCEDURE derivative_R2_to_R

END SUBMODULE Methods