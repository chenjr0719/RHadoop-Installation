# RHadoop-Installation

A Simple Shell Script to Install and Test RHadoop.

## What is RHadoop?

**RHadoop** is an open source project for combine **R** and **Hadoop** together.

It contains 4 different packages to combine different project from **Hadoop** and 1 package to enhance some functions to fit **MapReduce** framework.

* rhdfs: Combine Hadoop's **HDFS** with **R**.
* rhbase: Combine Hadoop's **HBase** with **R**.
* rmr2: Combine Hadoop's **MapReduce 2** with **R**.
* ravro: Combine Hadoop's **Avro** with **R**.
* plyrmr: Provides a familiar **plyr-like** interface with **MapReduce**.

You can reference the offical GitHub of **RHadoop**: https://github.com/RevolutionAnalytics/RHadoop

## Requirements

First at all, you need a **Hadoop Cluster**.

I suggest use **Apache Ambari** to deploy your own **Hadoop**.

You can reference my article to get more instruction of use **Apache Ambari** to deploy **Hadoop Cluster**.
**Link:** http://chenjr-jacob.idv.tw/2016/07/04/apache-ambari-deploy-manage-monitor-hadoop-cluster-easier/

This Script only work on **CentOS**, make sure your **Hadoop Cluster** is based on **CentOS**.

## What this Script actually do?

1. Install **EPEL Repository**.
2. Install **R** from **EPEL Repository**.
3. Install requirement packages of **RHadoop**.
4. Setting Environment Variable of **RHadoop**.
5. Install **RHadoop**.

## How to use?

```$
sudo sh RHadoop_Installation.sh
```

After the installation, you can use another script to test **RHadoop**.

```$
Rscript RHadoop_Wordcount_Test.R
```

Make sure you already create the directory of your user at **HDFS**.

If not, you can follow those commands:

```$
sudo su hdfs
hadoop fs -mkdir /user/$USER_NAME
hadoop fs -chown $USER_NAME:hdfs /user/$USER_NAME
```
