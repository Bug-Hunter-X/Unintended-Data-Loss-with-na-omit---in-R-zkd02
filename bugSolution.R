```R
# Example data
df <- data.frame(a = c(1, 2, NA, 4), b = c(5, NA, 7, 8))

# Correct way to handle NAs
# Method 1: Using complete.cases()
result1 <- df[complete.cases(df), ]
print(result1)

# Method 2: Removing NAs column-wise
result2 <- df[!is.na(df$a), ]
result2 <- result2[!is.na(result2$b), ]
print(result2)

# Method 3: Impute missing values (e.g., using mean)
df$a[is.na(df$a)] <- mean(df$a, na.rm = TRUE)
df$b[is.na(df$b)] <- mean(df$b, na.rm = TRUE)
print(df)
```