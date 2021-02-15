library(devtools)
library(usethis)
library(desc)

unlink("DESCRIPTION")

# Create and clean desc
my_desc <- description$new("!new")

# Set your package name
my_desc$set("Package", "cfbd")

#Set your name
my_desc$set("Authors@R", "person('Saiem', 'Gilani', email = 'saiem.gilani@gmail.com',role = c('aut','cre'))")

# Remove some author fields
my_desc$set("Maintainer","Saiem Gilani <saiem.gilani@gmail.com>")

# Set the version
my_desc$set_version("0.0.0.9")

# The title of your package
my_desc$set(Title = "College Football Data API client")
# The description of your package
my_desc$set(Description = "The R package cfbd is an API client for CollegeFootballData.com.")
# The urls
my_desc$set("URL", "https://saiemgilani.github.io/cfbd-api-R (website) https://www.github.com/saiemgilani/cfbd-api-R (devel)")
my_desc$set("BugReports", "http://www.github.com/saiemgilani/cfbd-api-R/issues")


# Save everything
my_desc$write(file = "DESCRIPTION")

# If you want to use the MIT licence, code of conduct, and lifecycle badge
use_mit_license()
use_code_of_conduct()
use_lifecycle_badge("Experimental")