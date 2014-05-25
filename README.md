### Introduction

### Introduction

In this exercise we write an R function that will the cache potentially time-consuming computations associated with inverting an inverse. For a large matrix,it may take too long tocompute the inverse, especially if it has to be computed repeatedly (e.g.in a loop). If the contents of the matirx to be inverted are not changing, it may make sense to cache the matrix so that when we need it again, itcan be looked up in the cache rather than recomputed. In this program we take advantage of the scoping rules of the R language and how they can be manipulated to preserve state inside of an R object.

### Caching the Inverse of a Matrix (makeCacheMatrix)

In this function We use the `<<-` operator which can be used to
assign a value to an object in an environment that is different from the
current environment. 

The first function, `makeInverse` creates a special "matrix", which is
really a list containing a function to

1.  set the value of the matrix
2.  get the value of the matrix
3.  set the value of the inverse
4.  get the value of the inverse



### Assignment: Caching the Inverse of a Matrix

The second function, cacheSolve calculates the inverse of the special "matrix"
created with the above function. However, it first checks to see if the
inverse has already been calculated. If so, it `get`s the inverse from the
cache and skips the computation. Otherwise, it calculates the inverse of
the matrix and sets the result in the cache via the `setinverse`
function.

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly (there are also alternatives to matrix inversion that we will
not discuss here). Your assignment is to write a pair of functions that
cache the inverse of a matrix.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

For this assignment, we assume that the matrix supplied is always
invertible.

The process I went through took the following steps:

1.  I forked the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
    to create a copy under my account.
2.  Cloned the forked GitHub repository to my computer so that I could
    edit the files locally.
3.  I edited the R file contained in the git repository and placed the
    solution in that file (I did not rename the file).
4.  I committed the completed R file into my git repository and pushed the
    git branch to the GitHub repository under my account.
5.  I submitted to Coursera the URL to my GitHub repository that contains
    the completed R code for the assignment.


