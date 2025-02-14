```R
# Example data
df <- data.frame(a = c(1, 2, NA, 4), b = c(5, NA, 7, 8))

# Incorrect use of na.omit()
result <- na.omit(df)
print(result)
```