echo ''
echo '------------------------------------------------------------------------------------------'
echo ''
echo 'The following PostgreSQL service has being created'
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''

kubectl get svc postgres

echo ''
echo '------------------------------------------------------------------------------------------'
echo ''
echo 'The following services are now created on your Minikube instance'
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''


minikube service list --namespace default

