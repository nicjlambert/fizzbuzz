#' Title
#'
#'Write a program that prints the numbers from 1 to 100. But for multiples of
#'three print "Fizz" instead of the number and for the multiples of five print
#'"Buzz". For numbers which are multiples of both three and five print "FizzBuzz".
#'
#'
#' @param range
#' @param triggers
#'
#' @return
#' @export divisibleBy
#'
#' @examples
divisibleBy <- function(range, triggers) {

  output <- vector()

  for (i in range) {
    output[i] <- ""

    if (i %% triggers[1] == 0) {
      output[i] <- paste0(output[i], "Fizz")
    }
    if (i %% triggers[2] == 0) {
      output[i] <- paste0(output[i], "Buzz")
    }
    if (output[i] == "") {
      output[i] <- i
    }
  }
  print(output)

  return(output)
}


