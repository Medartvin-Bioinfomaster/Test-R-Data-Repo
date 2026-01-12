# TODO: refactor this function to improve performance
my_function <- function(x) {
  return(x^2) # HACK: temporary fix for NA values
}

# FIXME: handle edge cases when x is negative
# comment about the case above
# comment about the case above
# comment about the case above

calculate_stats <- function(x) {
  if (x < 0) stop("Negative value!") # NOTE: might break later
  return(mean(x))
}