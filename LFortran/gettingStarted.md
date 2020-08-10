# LFortran Modern interactive LLVM based Fortran compiler

## Introduction

Have you ever used MATLAB, Python, or Julia? If yes, then you must be familiar with [REPL](https://en.wikipedia.org/wiki/Read–eval–print_loop) which stands for `read-eval-print-loop`. These languages are also referred to as the interative toplevel languages. Interested readers should read about [LISP](https://twobithistory.org/2018/10/14/lisp.html).

Fortran is not an interactive language, in a loose sense, it is a low-level language. Therefore, experimenting with it becomes a little bit tedius as a beginner needs to cope with the frustration of compilation, linking and building of a program. That is where, `LFortran`  comes into picture. According to their [website](https://lfortran.org), it help users to run fortran code interactively. If you know basic syntax of fortran then I would recommend you spend 5 minutes on this [website](https://mybinder.org/v2/gl/lfortran%2Fweb%2Flfortran-binder/master?filepath=Demo.ipynb), if you like what can be done using `LFortran` then keep on reading this article.

- `LFortran` can be used as a Jupyter notebook
- It can also be from terminal with an interative promt (REPL)
- Executable files can be created
- It runs on Mac, Linux, and Windows

To install `LFortran`, it is recommended to first install `Conda` from `Anaconda` from their [website](https://www.anaconda.com/distribution/). After installing `Conda` follow the steps given [here](https://docs.lfortran.org/installation/). A summary of steps are given below:

```sh
conda create -n easifem
conda activate easifem
conda install lfortran -c conda-forge
conda install jupyter fortran_kernel -c conda-forge
```

Now you can open the jupyer notebook and try following.

-




