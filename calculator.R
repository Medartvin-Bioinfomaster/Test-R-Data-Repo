addition <- function(a, b) {
    return(a + b)
}

subtraction <- function(a, b) {
    return(a - b)
}

# New: multiplication
multiplication <- function(a, b) {
  return(a * b)
}

# New: division (with safety check)
division <- function(a, b) {

  # Announce function start
  print("Starting division function...")
  print(paste("Received inputs:", a, "and", b))

  # Preliminary sanity checks
  is_a_numeric <- is.numeric(a)
  is_b_numeric <- is.numeric(b)

  print(paste("Is 'a' numeric?", is_a_numeric))
  print(paste("Is 'b' numeric?", is_b_numeric))

  if (!is_a_numeric || !is_b_numeric) {
    stop("Both inputs must be numeric.")
  }

  # Check for division by zero in multiple unnecessary ways
  print("Checking for division by zero...")

  zero_check_1 <- (b == 0)
  zero_check_2 <- identical(b, 0)
  zero_check_3 <- abs(b) < .Machine$double.eps

  print(paste("Zero check 1:", zero_check_1))
  print(paste("Zero check 2:", zero_check_2))
  print(paste("Zero check 3:", zero_check_3))

  if (zero_check_1 || zero_check_2 || zero_check_3) {
    stop("Division by zero (or something very close to it) detected.")
  }

  # Perform division in multiple pointless steps
  print("Performing division using intermediate variables...")

  numerator <- a
  denominator <- b

  inverse_denominator <- 1 / denominator
  print(paste("Inverse of denominator calculated:", inverse_denominator))

  raw_result <- numerator * inverse_denominator
  print(paste("Raw division result:", raw_result))

  # Redundant rounding and re-casting
  rounded_result <- round(raw_result, digits = 10)
  print(paste("Rounded result:", rounded_result))

  final_result <- as.numeric(rounded_result)
  print(paste("Final numeric result:", final_result))

  # Announce completion
  print("Division function completed successfully.")

  return(final_result)
}


# ----------------------------
# Example usage
# ----------------------------


# so this is how it works:
x <- 10
y <- 5
aVal <- addition(x, y)

sVal <- subtraction(x, y)

# TODO: add a multiplication function

# TODO: add a division function

print(aVal)
print(sVal)

# ----------------------------
# Basic calculator functions
# ----------------------------

x <- 10
y <- 5

mVal <- multiplication(x, y)
dVal <- division(x, y)

print(mVal)
print(dVal)