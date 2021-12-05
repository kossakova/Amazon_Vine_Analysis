# Amazon Vine Analysis

![AmazonVine](https://github.com/kossakova/Amazon_Vine_Analysis/blob/main/PNG/AmazonVine.jpg)

# Project Overview 

In this project we were able to understand and learn how to:
- Define big data and describe the challenges associated with it.
-	Define Hadoop and name the main elements of its ecosystem.
-	Explain how MapReduce processes data.
-	Define Spark and explain how it processes data.
-	Describe how NLP collects and analyzes text data.
-	Explain how to use AWS Simple Storage Service (S3) and relational databases for basic cloud storage.
-	Complete an analysis of an Amazon customer review.

## Recourses

- Amazon S3 URL = "https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Electronics_v1_00.tsv.gz"
- Pyspark -spark-3.2.0'
- pgAdmin 12.8.2
- SQL Database
- AWS
- RDS
- S3

# Overview of the analysis

In this project we analyzed Amazon reviews written by members of the paid Amazon Vine program. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review.
In this project, we had access to 50 datasets, each one contained reviews of a specific product, from clothing apparel to wireless products. We picked Electronics reviews datasets and used PySpark to perform the ETL process to extract the dataset, transform the data, connected to an AWS RDS instance, and loaded the transformed data into pgAdmin. 
Then we used PySpark and SQL to determine if there is any bias toward favorable reviews from Vine members in the dataset. 

# Results

Our three block of codes gives answers to following questions:

**- How many Vine reviews and non-Vine reviews were there?**
  
 There were over all total off 3093869 reviews, 18512 Vine, 3075349 Non-Vine.

**- How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?**

We determined that there is a total of 1781156 five-star reviews, 8044- Vine, 1773112- Non-Vine.

**- What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?**

Our code gave us following outputs:

The percentage of five-star Vine reviews is: 43.45

The percentage of five-star non-Vine reviews is: 57.66


![code](https://github.com/kossakova/Amazon_Vine_Analysis/blob/main/PNG/code.png)

![NonVine](https://github.com/kossakova/Amazon_Vine_Analysis/blob/main/PNG/NonVine.png)

![Vine](https://github.com/kossakova/Amazon_Vine_Analysis/blob/main/PNG/Vine.png)

# Summary
In this project we performed ETL on Amazon electronic product reviews and determined bias of Vine reviews.  

Our analysis untlined that there is not seemed to be a positive bias related to Vine program. Although the percentage of five-star Vine reviews is: 43.45 and 57.66 of non-Vine reviews, out of 1781156 5-star reviews just 8044 were paid Vine reviews and 1773112 unpaid, which brings us to conclusion that bias does not seem to be existed.  

Additional further analysis will help us fully understand of any existence of bias, for this project we could also analyze percentage of helpful votes for both paid and unpaid Vine reviews. 

