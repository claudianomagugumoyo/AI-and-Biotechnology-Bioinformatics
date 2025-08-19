#### Try It Yourself ####
# Practice Exercises 

# ----------------------------------------------------------------------------------------------------------------

# 1. Check Cholesterol level (using if) 
# Write an If statement to check cholesterol level is greater than 240, 
# if true, it will prints “High Cholesterol”

cholesterol <- 230
if (cholesterol > 240) {
  print("High Cholesterol")
}
# ----------------------------------------------------------------------------------------------------------------

# 2. Blood Pressure Status (using if...else)
# Write an if…else statement to check if blood pressure is normal.
# If it’s less than 120, print: “Blood Pressure is normal”
# If false then print: “Blood Pressure is high”

Systolic_bp <- 130
if(Systolic_bp < 120) {
  print("Blood pressure is normal")
} else {
  print("Blood pressure is high")
}

# 3. Automating Data Type Conversion with for loop
#PATIENTINFO
# Use patient_info.csv data and metadata.csv
raw_patient_info = read.csv(file.choose())
# Create a copy of the dataset to work on.
patient_info <- raw_patient_info

# Perform the following steps separately on each dataset (patient_info.csv data and metadata.csv)

# Identify all columns that should be converted to factor type.
str(patient_info)
# Store their names in a variable (factor_cols).
factor_cols <- c("gender", "diagnosis", "smoker")

# Use a for loop to convert all the columns in factor_cols to factor type.
# Pass factor_cols to the loop as a vector.
for (col in factor_cols) {
   patient_info[[col]] <- as.factor(patient_info[[col]])
 }
str(patient_info)

#METADATA
raw_data  = read.csv(file.choose())
#making a copy
metadata <- raw_data
#checking the structure of our df
str(metadata)

# Store their names in a variable 
metadata_factor_cols <- c("height", "gender")

# Use a for loop to convert all the columns in metadata_factor_cols to factor type.

for (col in metadata_factor_cols) {
  metadata[[col]] <- as.factor(metadata[[col]])
}
str(metadata)
#4. Converting Factors to Numeric Codes

#PATIENT INFO
str(patient_info)
# Choose one or more factor columns (e.g., smoking_status).
binary_cols <- c("smoker")

patient_info_2 <- raw_patient_info #making another copy of the original file because i made an error in the 1st copy

# Convert "Yes" to 1 and "No" to 0 using a for loop.
# use ifelse() condition inside the loop to replace Yes with 1 and No with 0
for (col in binary_cols) {
  patient_info_2[[col]] <- ifelse(patient_info_2[[col]] == "Yes", 1, 0)
}
class(binary_cols)
str(patient_info_2)

#METADATA
# Convert "Female" to 1 and "Male" to 0 using a for loop.
# use ifelse() condition inside the loop to replace Female with 1 and Male with 0
metadata_binary_col <- c("gender")

for (col in metadata_binary_col){
  metadata[[col]] <- ifelse(metadata[[col]] == "Female", 1, 0)
}

#to check if the structure has changed from factor to numeric
str(metadata) 
