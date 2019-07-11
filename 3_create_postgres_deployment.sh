echo ''
echo '------------------------------------------------------------------------------------------'
echo ''
echo 'Creating Deployment resource for PostgreSQL'
echo ''
echo 'Please be aware the following parameter has being fixed at postgres-deployment.yaml file:'
echo ''
echo '   image: postgres:10.4 ' 
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''

kubectl create -f postgres-deployment.yaml
