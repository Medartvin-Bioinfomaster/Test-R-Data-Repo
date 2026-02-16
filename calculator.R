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
  if (b == 0) {
    stop("Division by zero is not allowed.")
  }
  return(a / b)
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