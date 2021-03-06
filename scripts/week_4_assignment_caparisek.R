# 03Feb2019
# Week 4 Assignment 

# -- For you assignment this week, we will be practicing subsetting the same data frame we were working with in class, surveys. The objective of the assignment is for you to write a new, clean script, commit and push it to github, and then someone else will download and run that script on their computer, and file an issue in your repository with some comments about the script.

#Part I: Coding Practice-- 
#1) Create a new script in your r-davis-in-class-yourname project named week_4_assignment_ABC.R but with your initials in place of ABC. Save it to your scripts folder.



#2) Read portal_data_joined.csv into R using the read.csv command and create a dataframe named surveys (just like we did in class).

# if it's not there yet: 
# download.file(url="https://ndownloader.figshare.com/files/2292169",destfile = "data/portal_data_joined.csv")

surveyhmwk<- read.csv(file = "data/portal_data_joined.csv")


 



#3) Subset to just the first column and columns five through 8. Include only the first 400 rows. Save this as a dataframe called surveys_subset.
surveyhmwk #what's this thing look like 
surveys_subset<-surveyhmwk[c(1:400),c(1,5:8)]  #pull out 1st column & column 5-8 (only 1st 400 rows)
str(surveys_subset) #check



#4) CHALLENGE: Select all rows that have a hindfoot_length greater than 32, save these in a new data.frame named surveys_long_feet, then plot its hindfoot_length values as a histogram using the hist function....
?subset #what?
surveys_long_feet<-subset(surveys_subset,hindfoot_length>32) #yeah?
str(surveys_long_feet) # it seems to work but there are NAs and some values <32! why? 
##  Or ...    surveys_subset[c("hindfoot_length">32),]  ?????? same issue as above 
hist(surveys_long_feet$hindfoot_length) # all these are >32, how is the error in #4 fixed???



#Change the column hindfoot_lengths into a character vector.
?as.character
as.character(surveys_long_feet$hindfoot_length)  # $ addresses Column by name 



# Plot the hindfoot_lengths in a histogram (if this doesn’t work, just leave it, and think about it during Part II of the assignment, wink wink).
hist(as.character(surveys_long_feet$hindfoot_length )) # ERROR: histogram of characters

# Commit & Push the R script to GitHub - check your repository on GitHub and make sure your script is there





################################################################################################################
#Part II: Code Review

#1) Find your code partner’s repository on GitHub, click on the scripts folder, and find the script named w3_assignment_ABC.R

#2) Click on the script, then find the RAW button on the right hand side of the screen. Click on RAW.

#3) You should see a plain text version of the script. Right click anywhere on the page, and select “Save As”, save the script to your scripts folder in your repository. Make sure to change the file extension to .R (instead of .txt).

#4) Now, if you open up your RProject where you saved the script, you should see it, and better yet, you should have the same path/folder structure that is used in the script (we hope!).

#5) Try to run the script line by line. Where does it break? Can you fix it? File an Issue in your code partner’s repository. Write up a few sentences describing a few good things about the script (what worked! Was it clearly commented?) and what didn’t (where did it break for you, and why? How might it be fixed?). Remember to be constructive and positive…we’re all learning!

### Any questions? comments? Issues? Remember you can always tag us using individual names when you file an issue in the Discussion repository: @marthawohlfeil, @mcmaurer @ryanpeek, etc.