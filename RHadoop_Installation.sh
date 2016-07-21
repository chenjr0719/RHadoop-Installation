yum -y install epel-release
yum -y install R

Rscript RHadoop_Requirement.R

export HADOOP_CMD=/usr/bin/hadoop
export HADOOP_STREAMING=/usr/hdp/2.4.2.0-258/hadoop-mapreduce/hadoop-streaming.jar

R CMD INSTALL RHadoop/rmr2_3.3.1.tar.gz && R CMD INSTALL RHadoop/plyrmr_0.6.0.tar.gz && R CMD INSTALL RHadoop/rhdfs_1.0.8.tar.gz && R CMD INSTALL RHadoop/ravro_1.0.4.tar.gz
