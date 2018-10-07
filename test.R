## Function that tests the two functions of cachematrix.R

testAssignment <- function() {
    ## Prepare a matrix
    data <- matrix(c(1 / 2, -1 / 4, -1, 3 / 4), nrow = 2, ncol = 2)
    message("Data:")
    print(data)

    ## test the first function
    message("-- test makeCacheMatrix --")
    cm <- makeCacheMatrix(NULL)
    cmNames <- names(cm)
    ## get
    message(cmNames[2])
    print(cm[[2]]())
    ## set
    message(cmNames[1])
    cm[[1]](data)
    print(cm[[2]]())
    ## getInverse
    message(cmNames[4])
    print(cm[[4]]())
    ## setInverse
    message(cmNames[3])
    cm[[3]](solve(data))
    print(cm[[4]]())

    ## test the second function
    message("-- test cacheSolve --")
    data <- matrix(c(6, 2, 8, 4), nrow = 2, ncol = 2)
    cm <- makeCacheMatrix(data)
    print(cacheSolve(cm))
    print(cacheSolve(cm))
}