#ORGANISE YOUR PROJECT FOLDER WITH SUBFOLDERS FOR:
#DATA
#SCRIPTS
#RESULTS

#to create a subfolder - dir.create("foldername")
dir.create("data")
dir.create("scripts")
dir.create("results")

#HOW R CODES WORK
#function (your argument/input)
print("Biotechnology")

#creating a variable to store values
gene_expression <- c(2.3, 3.8, 3.9, 5.6, 9.4)

#running a function without saving it to a variable
mean(gene_expression)

mean_result <- mean(gene_expression)

#BASIC VISUALISATION
plot(gene_expression)
hist(gene_expression)
barplot(gene_expression)
#graphs can be saved as an imageor pdf using the export function

#CHECKING BASIC STATISTICS
summary(gene_expression)

#R DATATYPES
#1. numeric with dec pt, positives or negative
x <- 24
class(x)
y <- -40
class(y)
#numeric is used for whole numbers and decimals

#2. integer/whole number
z <- 24L 
class(z)

#converting numeric to integer
var_1 <- c(28.4, 23.7, 2.9)
class(var_1)
-------
as.integer(var_1)
var2 <-as.integer(var_1)
class(var2)

#converting int to numeric
var3 <- as.numeric(var2)
class(var3)

#3. character/string data
var4 <- c("gene1", "gene2", "gene3")
class(var4)
var5 <- c("3.8", "4.6", "5.9")
class(var5)

#4. factor or categorical data
#either numeric: (0,1), or character: (normal, cancer)
disease_status <- c("cancer", "normal", "cancer", "cancer", "normal")
class(disease_status)

#convert character to a factor
disease_status <- as.factor(disease_status)
class(disease_status)
disease_status

#changing the order of appearance from normal, cancer to cancer, normal
disease_status <- factor(disease_status,
                         levels = c("normal", "cancer"))
disease_status

#5. logical data type
age <- c(23, 25, 28)
var8 <- age < 25
var8 #only true for the 1st number since it is less than 25

#IMPORT CSV FILE
data <- read.csv(file.choose())
View(data)

#to check the structure of the data
str(data)

#we need to convert height and gender columns to factors
data$height_fa <- as.factor(data$height) 
str(data)

#relevel factor to order frrom tall - medium - short
data$height_fa <- factor(data$height_fa,
                         levels = c("Tall", "Medium", "Short"))
levels(data$height_fa)

#converting gender column from character to factor
data$gender_fac <- as.factor(data$gender)
str(data)

#converting factor into numeric factor
#if gender is female assign the number 1, otherwise assign 0 if it is not
data$gender_num <- ifelse(data$gender_fac == "Female", 1, 0)
class(data$gender_num)

#converting back to a factor
data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)

#to save a csv file in our results subfolder
write.csv(disease_status, file = "results/patient_data.csv")

#to save workspace
save.image(file = "full_workspace.RData")

#to save specific objects
save(gene_expression, disease_status, file = "workspace.RData")

#load workspace
load("full_workspace.RData")
