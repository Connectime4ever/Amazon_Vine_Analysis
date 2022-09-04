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


#### After perfoming the queries the main results are:

+ The total number of reviews recorded in the selected dataset is 3105520.
![Total](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/Total.png)

+ There are 3105513 unpaid reviews, 2 paid reviews and 5 rows show null values.

![eachtype](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/eachtype.png)


+  The total number of 5 star reviews is 1864804.

![Total5StarReviews](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/Total5StarReviews.png)

+ There are 1864803 unpaid 5-star reviews, and only 1 paid 5-star review. Please find below the percentage each of them accounts for.

![Percentages](https://github.com/Connectime4ever/Amazon_Vine_Analysis/blob/main/Percentages.png)

***Please see additional queries performed in Vine_Review_Analysis.sql***


## Summary:

+ There is no evidences of bias toward favorable reviews from Vine members based the analysis of the selected dataset. 

+ The dataset selected has no significant representation of paid reviews so this analysis has an important limitation to confirm or not if there might be bias in the ratings of the vine program.

+ In order to be able to really test any bias, it is recommended working with a sample with same number of unpaid and paid reviews, thus the patherns and performance of both groups can be contrasted.


