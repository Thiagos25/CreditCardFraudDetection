

sudo -su hdfs
hdfs dfs -ls -R /user/admin/

hadoop fs -mkdir /user/hive/warehouse/creditcardtransactions

hdfs dfs -mkdir /user/admin/
hdfs dfs -chown admin:hdfs /user/admin/
hdfs dfs -chown admin:hdfs /user/admin/*

hdfs dfs -copyFromLocal /tmp/creditcard.csv /user/admin/
hdfs dfs -chown -R nifi /user/hive/warehouse/creditcardtransactions
hdfs dfs -chmod 7777 /user/hive/warehouse/creditcardtransactions/*
hdfs dfs -ls /user/hive/warehouse/creditcardtransactions/
hdfs dfs -rm /user/hive/warehouse/creditcardtransactions/*


scp -i /Users/tsantiago/Downloads/OneNodeCDHCluster.pem /Users/tsantiago/Downloads/cc_fraud-tsantiago/resources/creditcard.csv centos@ec2-54-183-75-232.us-west-1.compute.amazonaws.com:/tmp/ 
ssh -i /Users/tsantiago/Downloads/OneNodeCDHCluster.pem centos@ec2-54-183-75-232.us-west-1.compute.amazonaws.com



DROP TABLE default.creditcardtransactions 
CREATE EXTERNAL TABLE default.creditcardtransactions (   time STRING,   v1 FLOAT,   v2 FLOAT,   v3 FLOAT,   v4 FLOAT,   v5 FLOAT,   v6 FLOAT,   v7 FLOAT,   v8 FLOAT,   v9 FLOAT,   v10 FLOAT,   v11 FLOAT,   v12 FLOAT,   v13 FLOAT,   v14 FLOAT,   v15 FLOAT,   v16 FLOAT,   v17 FLOAT,   v18 FLOAT,   v19 FLOAT,   v20 FLOAT,   v21 FLOAT,   v22 FLOAT,   v23 FLOAT,   v24 FLOAT,   v25 FLOAT,   v26 FLOAT,   v27 FLOAT,   v28 FLOAT,   amount FLOAT,   classe STRING, lat STRING, lon STRING ) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE LOCATION 'hdfs://ip-172-31-3-151.us-west-1.compute.internal:8020/user/hive/warehouse/creditcardtransactions'


SHOW CREATE TABLE creditcardtransactions;
INSERT INTO TABLE default.creditcardtransactions 
  VALUES (1, -1.3598071336738,-0.0727811733098497,2.53634673796914,1.37815522427443,-0.338320769942518,0.462387777762292,0.239598554061257,0.0986979012610507,0.363786969611213,0.0907941719789316,-0.551599533260813,-0.617800855762348,-0.991389847235408,-0.311169353699879,1.46817697209427,-0.470400525259478,0.207971241929242,0.0257905801985591,0.403992960255733,0.251412098239705,-0.018306777944153,0.277837575558899,-0.110473910188767,0.0669280749146731,0.128539358273528,-0.189114843888824,0.133558376740387,-0.0210530534538215,149.62,'1', -23.45672342, -46.57896789)



>>redash to hive
Hive_CC
ec2-54-183-75-232.us-west-1.compute.amazonaws.com
10000
default
hive



>>superset to impala
ec2-54-183-75-232.us-west-1.compute.amazonaws.com
21050
default
hue
hue
