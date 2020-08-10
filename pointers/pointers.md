# Pointers in fortran

## Introduction

During the execution of a program, there may be situations where variables must be created/ destroyed dynamically. In fortran, pointers can be used in such cases. However, concept of pointers in a programming language (e.g., C, C++) can be very difficult to understand for a beginner. This is mainly because a pointer variable stores the memory address of an object, thus introduces a concept of memory address. Now a programmer has to deal with the memory-address and its corresponding value. However, in my opinion, pointers in fortran are relatively simple and easy to understand. Fortran tries to minimize the confusion between address and value of variables.

## Working with pointers

> In fortran, a pointer is an alias of its target.

Fortran pointers are can be visualized as variables which are dynamically *associated* with some *target* data. To define a pointer we use:

```fortran
INTEGER, POINTER :: i_Ptr1, i_Ptr2
REAL, POINTER :: r_Ptr1, r_Ptr2, rv_Ptr1( : ), rv_Ptr2( : )
```



## References

[] http://www.adt.unipd.it/corsi/Bianco/www.pcc.qub.ac.uk/tec/courses/f90/stu-notes/F90_notesMIF_12.html
[] http://www.lahey.com/docs/lfpro78help/F95LSPointers.htm
[] https://software.intel.com/en-us/fortran-compiler-developer-guide-and-reference-pointer-fortran