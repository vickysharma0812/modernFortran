SUBMODULE( AutoDiff_Module ) Methods
IMPLICIT NONE

CONTAINS

!----------------------------------------------------------------------------
!                                                                 Derivative
!----------------------------------------------------------------------------

MODULE PROCEDURE derivative_R_to_R
  Ans = 0.5_DFP * (f( x+eps ) - f( x-eps ))/eps
END PROCEDURE derivative_R_to_R

END SUBMODULE Methods