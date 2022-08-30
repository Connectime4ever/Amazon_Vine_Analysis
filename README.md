# Amazon Vine Analysis

## Overview of the analysis of the Vine program
#### For this project a Music dataset from Amazon Vine review program was selected. 
#### PySpark has been used to perform the ETL process, to connect to an AWS RDS instance and load the transform data into pgAdmin. 
#### The final purpose of the analysis is to determine is there is any bias toward favorable reviews from Vine members in the selected dataset.  This analysis could be performed by using either PySpark, Pandas or SQL. In this particular case PySpark was the chosen approach. 

## Results

***DataFrame of Amazon Music Vine Review program dataset***

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


 + ***Quantity of Vine Reviews.***


+ ***Quantity of Non-Vine Reviews.*** 


+ ***Quantity of Vine Reviews with 5 Stars.***


+ ***Quantity of non-Vine Reviews with 5 Stars***


Using bulleted lists and images of DataFrames as support, address the following questions:


How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?
<table class="t1" 
<thead>
<tr><th> DESCRIPTION </th><th> Total </th></tr>
</thead>
<tbody>
<tr><td>Vine Reviews</td><td>100</td></tr>
<tr><td>Non-Vine Reviews</td><td>100</td></tr>
<tr><td>Vine Reviews with 5 starts</td><td>100</td></tr>
<tr><td>Non-Vine Reviews with 5 starts</td><td>100</td></tr>
<tr><td>Percentage of Vine Reviews with 5 starts</td><td>100</td></tr>
<tr><td>Percentage of Non-Vine Reviews with 5 starts</td><td>100</td></tr>
<tr><td>Total Reviews</td><td>100</td></tr>
</tbody>
</table>


## Summary:

The results of this analysis show that there is no bias for reviews in the Vine program. 

In your summary, state if there is any positivity bias for reviews in the Vine program. Use the results of your analysis to support your statement. 

An additional analysis that could be performed to support this conclusion is Then, provide one additional analysis that you could do with the dataset to support your statement.


