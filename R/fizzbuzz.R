#' divisibleBy
#'
#' A program that prints the numbers from 1 to n. But for multiples of
#' three prints "Fizz" instead of the number and for the multiples of five print
#' "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".
#'
#' @param range a vector of integer values
#' @param triggers a vector of integer values, representing the divisors for which
#'                 "Fizz" and "Buzz" will be printed
#'
#' @return a vector of strings, with the "FizzBuzz" values as described in the function
#'         description
#' @export divisibleBy
#'
#' @examples
#' divisibleBy(1:100, c(3, 5))

divisibleBy <- function(range, triggers) {
  # Initialize the output vector with empty strings
  output <- rep("", length(range))

  # Loop through the range of numbers
  for (i in range) {
    # If the current number is divisible by both of the triggers,
    # set the output value to "FizzBuzz"
    if (i %% triggers[1] == 0 && i %% triggers[2] == 0) {
      output[i] <- "FizzBuzz"
    }
    # If the current number is only divisible by the first trigger,
    # set the output value to "Fizz"
    else if (i %% triggers[1] == 0) {
      output[i] <- "Fizz"
    }
    # If the current number is only divisible by the second trigger,
    # set the output value to "Buzz"
    else if (i %% triggers[2] == 0) {
      output[i] <- "Buzz"
    }
    # If the current number is not divisible by either of the triggers,
    # set the output value to the original number as a string
    else {
      output[i] <- as.character(i)
    }
  }

  # Return the output vector
  return(output)
}