PROGRAM main
  USE, INTRINSIC :: ISO_FORTRAN_ENV, &
  & ONLY : DFP=>real64, I4B=>int32
  IMPLICIT NONE

  ABSTRACT INTERFACE
    PURE FUNCTION func( x ) RESULT( Ans )
    IMPORT :: DFP
    REAL( DFP ), INTENT( IN ) :: x
    REAL( DFP ) :: Ans
    END FUNCTION func
  END INTERFACE

  PROCEDURE( func ), POINTER :: f => NULL()
  INTEGER( I4B ) :: n

  WRITE( *, "(A)", ADVANCE="NO" ) &
    & "Enter the value of case (n) :: "
  READ( *, * ) n

  SELECT CASE( n )
  CASE( 1 )
    f => func_1
  CASE( 2 )
    f => func_2
  CASE( 3 )
    f =>  func_3
  CASE DEFAULT
    f => func_1
  END SELECT

  WRITE( *, * ) f( 2.0_DFP )

  CONTAINS
    PURE FUNCTION func_1( x ) RESULT( Ans )
      REAL( DFP ), INTENT( IN ) :: x
      REAL( DFP ) :: Ans
      Ans = SIN( x )
    END FUNCTION func_1

    PURE FUNCTION func_2( x ) RESULT( Ans )
      REAL( DFP ), INTENT( IN ) :: x
      REAL( DFP ) :: Ans
      Ans = COS( x )
    END FUNCTION func_2

    PURE FUNCTION func_3( x ) RESULT( Ans )
      REAL( DFP ), INTENT( IN ) :: x
      REAL( DFP ) :: Ans
      Ans = TAN( x )
    END FUNCTION func_3
END PROGRAM main