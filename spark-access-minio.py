from pyspark.sql import SparkSession

spark = SparkSession\
    .builder\
    .appName("Test json")\
    .getOrCreate()

log4jLogger = spark.sparkContext._jvm.org.apache.log4j
LOGGER = log4jLogger.LogManager.getLogger(__name__)

sourceBucket = "asiatrip"

inputPath = f"s3a://{sourceBucket}/addresses.csv"
outputPath = f"s3a://{sourceBucket}/output_survey4.csv"
df = spark.read.option("header", "true").format("s3selectCSV").csv(inputPath)
df.write.mode("overwrite").parquet(outputPath)
spark.stop()
