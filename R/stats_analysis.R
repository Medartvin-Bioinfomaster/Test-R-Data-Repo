# ----------------------------
# Small statistical analysis
# ----------------------------

# 1. Create some sample data
set.seed(42)  # for reproducibility
data <- data.frame(
  id = 1:20,
  value = rnorm(20, mean = 50, sd = 10)
)

# 2. Basic descriptive statistics
summary_stats <- data.frame(
  mean = mean(data$value),
  median = median(data$value),
  sd = sd(data$value),
  min = min(data$value),
  max = max(data$value)
)

# 3. Simple statistical test
# One-sample t-test against a hypothetical mean (50)
t_test_result <- t.test(data$value, mu = 50)

# 4. Return / print results
print("Summary statistics:")
print(summary_stats)

print("T-test result:")
print(t_test_result)

# 5. Optional: save results to a file
write.csv(summary_stats, "summary_stats.csv", row.names = FALSE)

# 6. Return object (useful if sourced)
list(
  raw_data = data,
  summary = summary_stats,
  t_test = t_test_result
)
