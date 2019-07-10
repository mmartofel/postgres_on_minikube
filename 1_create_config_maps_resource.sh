echo ''
echo '------------------------------------------------------------------------------------------'
echo ''
echo 'Creating ConfigMap resource for PostgreSQL'
echo ''
echo 'Please be aware the following parameter has being fixed at postgres-configmap.yaml file:'
echo ''
echo 'POSTGRES_DB:       pivotal'
echo 'POSTGRES_USER:     admin'
echo 'POSTGRES_PASSWORD: admin'
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''

kubectl create -f postgres-configmap.yaml

