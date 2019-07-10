


If your POD is not suppose to run.

1) Check all pods statuses:

kubectl get pods

NAME                              READY   STATUS             RESTARTS   AGE
hello-minikube-856979d68c-jbxnc   1/1     Running            0          37h
postgres-5dbcc6764c-wbtl5         0/1     CrashLoopBackOff   6          8m31s

2) Describe pod of your interest to troubleshoot:

kubectl describe pod postgres-5dbcc6764c-wbtl5

3) Check exack log output for pod:

kubectl logs postgres-5dbcc6764c-xrxfj


