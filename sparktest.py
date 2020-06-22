import os
from pyspark.sql import SQLContext
from pyspark import SparkContext
from pyspark.sql import SparkSession
from pyspark import SparkConf, SparkContext, sql


MAX_MEMORY = "2g"

sc = SparkSession.builder\
.config("spark.memory.offHeap.enabled",True)\
.config("spark.memory.offHeap.size","4g")\
.config("spark.executor.memory", MAX_MEMORY)\
.config("spark.driver.memory", MAX_MEMORY)\
.config("spark.sql.autoBroadcastJoinThreshold", -1)\
.getOrCreate()

sc = SparkSession.builder\
.getOrCreate()

sqlContext = sql.SQLContext(sc)

dataframe_sql = sqlContext.read.format("jdbc").option("url", "jdbc:mariadb://localhost:3316/hmda").option("driver", "org.mariadb.jdbc.Driver").option("dbtable", "lars").option("user", "root").option("password", "").load()