# SQL-challenge

For this task I was able to combine a number of the skills we have learned. This brought in the most recent SQL information we learned and also some of the earlier Python skills. Using the database diagram was helpful in planning the creation but also proved to be conceptually challenging. to work on the bouns and add some plotting made me realize that things are starting to make sense.

To begin with I examined the spreadsheets to be imported to discern the best primary keys. Additionally there were some csv files that had two primary keys which I learned was a constraint key. Then using http://www.quickdatabasediagrams.com/​ I worked to find the foreign keys that made the most sense.

![Screenshot_of_QuickDBD_diagram](https://user-images.githubusercontent.com/71193081/99931511-a7e9b900-2d09-11eb-9be0-17e6f3731c9a.PNG)

Once I concluded my planning on the database diagram site, I exported the information to help me in the SQL data table creation process.  Looking at the tables I had to move some of the calls around until I was able to get the information that made the most sense.

From there I created a SQL query for the specific questions in the assignment.  Some of the call required joining mutiple tables to get the answer.

# BONUS
For the bonus I read in the code to link the database to Pandas. Once there I simply did a SQL call on the specifc information we were looking at. From there I created a histogram. 

![bonus_bar_chart](https://user-images.githubusercontent.com/71193081/99932105-ef714480-2d0b-11eb-9946-be2b382c98bf.png)

Finally for the bar chart I first did a python call on the title column and discovered the average salary for each position by title. I then reset the index to be able to use the title column as an axis in the bar chart.

![bonus_histogram](https://user-images.githubusercontent.com/71193081/99932113-f1d39e80-2d0b-11eb-885b-d075f1956ed7.png)

### Submitted by:
### Jenny Kaylor
### 11/22/2020
