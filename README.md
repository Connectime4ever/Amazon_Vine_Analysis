# Amazon Vine Analysis

## Overview of the analysis of the Vine program
#### For this project a Book dataset from Amazon Vine review program was selected. 
#### PySpark has been used to perform the ETL process, to connect to an AWS RDS instance and load the transform data into pgAdmin. 
#### The final purpose of the analysis is to determine is there is any bias toward favorable reviews from Vine members in the selected dataset.  This analysis could be performed by using either PySpark, Pandas or SQL. In this particular case, SQL was the chosen approach. 

## Results

***DataFrame of Amazon Book Vine Review program dataset***

![d11](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/d11.png)

---
***customer_table DataFrame***

![d12](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/d12.png)

---
***Products_table DataFrame*** 

![d13](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/d13.png)

---

***review_id_table DataFrame***

![d14](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/d14.png)

---

***vine_table_DataFrame***

![d15](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/d15.png)

---

***vine_df to table in RDS***

![d20](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/d20.png)


***vine_df successfully exported from AWS database as CSV file and imported to a local database in pgAdmin.***
![d21](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/d21.png)

#### As requested the original table "vine_table" was filtered and a new table created to retrive all the rows where the total_votes count was greater than 20.  
#### This step was suggested to pick only those reviews that were more likely to be helpful and to avoid a zero division error. 
#### The new table created was named filtered_20 and it is the start point for the subsequent steps (filtering, new tables creation and queries.)  
![filtered_20](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/filtered_20.png)


#### After perfoming the queries the main results are:

 + There was a total of 501609 vine reviews with total_votes count greater than 20. 
![Total](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/Total.png)

+ The 100% of the reviews were unpaid reviews (***501609***). There was no any paid review in the data. 
![eachtype](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/eachtype.png)

+ Out of the 501609 total reviews, 258381 were 5 star reviews.

![Total5StarReviews](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/Total5StarReviews.png)

+ 100% of them were unpaid reviews, thus zero paid 5 star reviews. Please see these outputs below from the queries performed. 

![unpaid5](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/unpaid5.png)

![Percentages](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/Percentages.png)


## Summary:

 + The selected dataset for this analyis has no representation of paid reviews. That said, there is no data that can show evidence of bias toward favorable reviews from Vine members.  

+ As a result other questions arise: what are the chances of having paid reviews vs. uppaid reviews? Are paid reviews common in the universe or very unlikely? The answers of this questions could bring some clarity for further analysis and steps. 

+ Because of the above mentioned limitations, this analysis would not be useful to confirm or not if there migth be or not bias in the ratings of the vine program.  To really test this it is recommended working with a sample with same number of unpaid and paid reviews, thus the patherns of both groups can be contrasted.


