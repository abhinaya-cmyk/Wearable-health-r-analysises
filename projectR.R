# --------------------------------------
# PROGRAM: PIE, BAR & HISTOGRAM USING WEARABLE HEALTH DATASET
# --------------------------------------
# Step 1: Read CSV file
data <- read.csv("C:\\Users\\Abhinaya\\OneDrive\\文档\\Desktop\\wearables_health_6mo_daily (1).csv", stringsAsFactors = TRUE)

cat("\n--- Columns in Dataset ---\n")
print(colnames(data))

cat("\n--- First 6 rows of the dataset ---\n")
print(head(data))

cat("\n--- Structure of the dataset ---\n")
str(data)

cat("\n--- Summary of the dataset ---\n")
print(summary(data))


# --------------------------------------
# Step 2: Display dataset
# --------------------------------------
print(data)

# Open graphics window (for Windows)
windows()

# Show multiple graphs
par(mfrow = c(2,2))


# --------------------------------------
# Step 3: Pie Chart (Workout Type)
# --------------------------------------
workout_table <- table(data$workout_type)

pie(
  workout_table,
  labels = names(workout_table),
  main = "Workout Type Distribution (Pie Chart)",
)


# --------------------------------------
# Step 4: Bar Chart (Mood Frequency)
# --------------------------------------
mood_table <- table(data$mood)

barplot(
  mood_table,
  col = rainbow(length(mood_table)),
  border = "black",
  main = "Mood Frequency (Bar Chart)",
  xlab = "Mood",
  ylab = "Count"
)


# --------------------------------------
# Step 5: Bar Chart (Average Steps by Gender)
# --------------------------------------
avg_steps <- tapply(data$steps, data$gender, mean, na.rm = TRUE)

barplot(
  avg_steps,
  col = heat.colors(length(avg_steps)),
  border = "black",
  main = "Average Steps by Gender",
  xlab = "Gender",
  ylab = "Average Steps"
)


# --------------------------------------
# Step 6: Histogram (Sleep Duration)
# --------------------------------------
hist(
  data$sleep_duration_hours,
  main = "Histogram of Sleep Duration",
  xlab = "Sleep Duration (Hours)",
  col = "lightgreen",
  border = "black"
)