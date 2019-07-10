Purpose of that repository is to showcase how to create PostgreSQL service (POD) on locally installed Minikube instance.

First you need to have VirtualBox installed to host Minikube virtual machine.
Then please follow instructions of how to successfully install and setup Minikube itself.

https://kubernetes.io/docs/tasks/tools/install-minikube/

Once ready simply fire run.sh script to kick all the steps required. At the end of the process psql command to get to the PostgreSQL database will be shown.

One complete with your testing simply run 7_cleanup.sh to delete all the components related to your PostgeSQL service.

Have fun !!!

```
myhost ◯ : ./run.sh

------------------------------------------------------------------------------------------

Creating ConfigMap resource for PostgreSQL

Please be aware the following parameter has being fixed at postgres-configmap.yaml file:

POSTGRES_DB:       pivotal
POSTGRES_USER:     admin
POSTGRES_PASSWORD: admin

------------------------------------------------------------------------------------------

configmap/postgres-config created

------------------------------------------------------------------------------------------

Creating PersistentVolume resource for PostgreSQL

Please be aware the following parameter has being fixed at postgres-storage.yaml file:

  hostPath:
    path: "/mnt/sda1/postgres_data"

------------------------------------------------------------------------------------------

persistentvolume/postgres-pv-volume created
persistentvolumeclaim/postgres-pv-claim created

------------------------------------------------------------------------------------------

Creating Deployment resource for PostgreSQL

Please be aware the following parameter has being fixed at postgres-deployment.yaml file:

   image: postgres:10.4

------------------------------------------------------------------------------------------

deployment.extensions/postgres created

------------------------------------------------------------------------------------------

Creating Service resource for PostgreSQL

------------------------------------------------------------------------------------------

service/postgres created

------------------------------------------------------------------------------------------

The following PostgreSQL service has being created

------------------------------------------------------------------------------------------

NAME       TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
postgres   NodePort   10.108.246.65   <none>        5432:30252/TCP   1s

------------------------------------------------------------------------------------------

The following services are now created on your Minikube instance

------------------------------------------------------------------------------------------

|-----------|----------------|-----------------------------|
| NAMESPACE |      NAME      |             URL             |
|-----------|----------------|-----------------------------|
| default   | hello-minikube | http://192.168.99.100:31927 |
| default   | kubernetes     | No node port                |
| default   | postgres       | http://192.168.99.100:30252 |
|-----------|----------------|-----------------------------|

------------------------------------------------------------------------------------------

READY !!!

Use the following command to connect to your newly created service.
NOTICE: Please make sure you have psql binary availanle at your machine.

------------------------------------------------------------------------------------------

export PGPASSWORD='admin' ; psql -h 192.168.99.100 -U admin --password -p 30252 pivotal -w

myhost ◯ : export PGPASSWORD='admin' ; psql -h 192.168.99.100 -U admin --password -p 30252 pivotal -w
psql (11.0, server 10.4 (Debian 10.4-2.pgdg90+1))
Type "help" for help.

pivotal=# create table dummy (id int, name varchar(20));
CREATE TABLE
pivotal=# \d
       List of relations
 Schema | Name  | Type  | Owner
--------+-------+-------+-------
 public | dummy | table | admin
(1 row)

pivotal=#
```

