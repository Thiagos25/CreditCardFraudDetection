
http://ec2-54-183-75-232.us-west-1.compute.amazonaws.com


scp -i /Users/tsantiago/Downloads/OneNodeCDHCluster.pem /Users/tsantiago/Downloads/gasprices.csv centos@ec2-13-57-182-252.us-west-1.compute.amazonaws.com:/tmp/ 
ssh -i /Users/tsantiago/Downloads/OneNodeCDHCluster.pem centos@ec2-54-183-75-232.us-west-1.compute.amazonaws.com


lsblk

sudo su -
yum install -y git
git clone https://github.com/fabiog1901/OneNodeCDHCluster.git
cd OneNodeCDHCluster
chmod +x setup.sh
./setup.sh aws templates/cdsw_template.json /dev/nvme1n1


sudo -su hdfs
hdfs dfs -ls -R /user/admin/


hdfs dfs -mkdir /user/admin/
hdfs dfs -chown admin:hdfs /user/admin/

hdfs dfs -copyFromLocal /tmp/creditcard.csv /user/admin/
hdfs dfs -chown admin:hdfs /user/admin/*



scp -i /Users/tsantiago/Downloads/OneNodeCDHCluster.pem /Users/tsantiago/Downloads/cc_fraud-tsantiago/resources/creditcard.csv centos@ec2-54-183-75-232.us-west-1.compute.amazonaws.com:/tmp/ 



mkdir datasets
wget http://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/breast-cancer-wisconsin.data



scp -i /Users/tsantiago/Downloads/OneNodeCDHCluster.pem /Users/tsantiago/Downloads/gasprices.csv centos@ec2-13-57-182-252.us-west-1.compute.amazonaws.com:/tmp/ 



scp -i /Users/tsantiago/Downloads/creditcardfraud.zip centos@100.66.128.30:/tmp/ 



user: clouderanT@CLOUDERA
pass: cloudera




>>superset to impala
ec2-54-183-75-232.us-west-1.compute.amazonaws.com
21050
default
hue
hue


>>redash to hive
Hive_CC
ec2-54-183-75-232.us-west-1.compute.amazonaws.com
10000
default
hive


 Couldn't connect to Docker daemon at http+docker://localhost - is it running?

Connecting to jdbc:hive2://ip-xxx-xx-x-xxx.ap-south-1.compute.internal:10000/default Unknown HS2 problem when communicating with Thrift server. Error: Could not open client transport with JDBC Uri: jdbc:hive2://ip-xxx-xx-x-xxx.ap-south-1.compute.internal:10000/default: java.net.SocketException: Connection reset (state=08S01,code=0) No current connection Intercepting System.exit(2) Failing Oozie Launcher, Main class [org.apache.oozie.action.hadoop.Hive2Main], exit code [2]

/etc/hive/conf.cloudera.hive/core-site.xml, /etc/hive/conf.cloudera.hive/hive-site.xml



